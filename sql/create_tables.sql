-- Création de la table principale des transactions
CREATE TABLE transactions_idf (
    id_mutation TEXT,
    date_mutation DATE,
    valeur_fonciere REAL,
    surface_m2 REAL,
    code_postal INTEGER,
    commune TEXT,
    departement INTEGER,
    prix_m2 REAL,
    annee INTEGER
);

-- Table du prix moyen du marché par commune et par année
CREATE TABLE prix_marche_commune AS
SELECT
    commune,
    departement,
    annee,
    COUNT(*) AS nb_ventes,
    AVG(prix_m2) AS prix_m2_moyen
FROM transactions_idf
GROUP BY commune, departement, annee;

-- Table d’évaluation des transactions par rapport au marché
CREATE TABLE transactions_eval AS
SELECT
    t.*,
    p.prix_m2_moyen,
    ROUND(
        (t.prix_m2 - p.prix_m2_moyen) / p.prix_m2_moyen * 100,
        2
    ) AS ecart_pct,
    CASE
        WHEN (t.prix_m2 - p.prix_m2_moyen) / p.prix_m2_moyen * 100 <= -10
            THEN 'Sous-évalué'
        WHEN (t.prix_m2 - p.prix_m2_moyen) / p.prix_m2_moyen * 100 >= 10
            THEN 'Sur-évalué'
        ELSE 'Prix cohérent'
    END AS statut_eval
FROM transactions_idf t
JOIN prix_marche_commune p
    ON t.commune = p.commune
   AND t.departement = p.departement
   AND t.annee = p.annee;
