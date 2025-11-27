-- Prix moyen au m² par année (vue globale)
SELECT 
    annee,
    COUNT(*) AS nb_ventes,
    ROUND(AVG(prix_m2), 2) AS prix_m2_moyen
FROM transactions_idf
GROUP BY annee
ORDER BY annee;


-- Prix moyen au m² par département
SELECT
    departement,
    COUNT(*) AS nb_ventes,
    ROUND(AVG(prix_m2), 0) AS prix_m2_moyen
FROM transactions_idf
GROUP BY departement
ORDER BY prix_m2_moyen DESC;


-- Top 10 des communes les plus chères (avec au moins 50 ventes)
SELECT
    commune,
    departement,
    COUNT(*) AS nb_ventes,
    ROUND(AVG(prix_m2), 0) AS prix_m2_moyen
FROM transactions_idf
GROUP BY commune, departement
HAVING nb_ventes >= 50
ORDER BY prix_m2_moyen DESC
LIMIT 10;


-- Répartition des statuts (sous-évalué / cohérent / sur-évalué)
SELECT
    statut_eval,
    COUNT(*) AS nb_transactions,
    ROUND(AVG(ecart_pct), 2) AS ecart_moyen_pct
FROM transactions_eval
GROUP BY statut_eval
ORDER BY nb_transactions DESC;


-- Analyse d’une commune spécifique (à filtrer dans un outil SQL ou remplacer le nom)
SELECT
    commune,
    annee,
    COUNT(*) AS nb_ventes,
    ROUND(AVG(prix_m2), 0) AS prix_m2_moyen,
    ROUND(AVG(ecart_pct), 2) AS ecart_moyen_pct
FROM transactions_eval
WHERE commune = 'Saint-Maur-des-Fossés'
GROUP BY commune, annee
ORDER BY annee;
