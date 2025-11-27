# Analyse du marché immobilier en Île-de-France (DVF 2020–2025)

Ce projet a pour objectif d’analyser l’évolution des prix immobiliers en Île-de-France à partir des données officielles
des Demandes de Valeurs Foncières (DVF) entre 2020 et 2025.

Il permet également de comparer chaque transaction au prix moyen du marché local (par commune et par année) afin de
déterminer si un bien est **sous-évalué**, **au prix du marché** ou **surévalué**.

Le projet combine **Python**, **SQL** et **Power BI** pour couvrir toute la chaîne de la data : préparation, modélisation
et visualisation.


---

## Technologies utilisées

- **Python** : nettoyage, transformation des données (Pandas)
- **SQL (SQLite)** : modélisation des données, agrégations, jointures
- **Power BI** : création de tableaux de bord interactifs
- **Jupyter Notebook** : environnement de travail pour l’analyse


  ---

## Objectifs du projet

- Analyser l’évolution du prix moyen au m² en Île-de-France entre 2020 et 2025.
- Comparer les prix immobiliers par département et par commune.
- Construire un outil d’aide à la décision pour une agence immobilière.
- Déterminer automatiquement si un bien est :
  - sous-évalué,
  - au prix du marché,
  - surévalué.
- Fournir des indicateurs clairs pour le pilotage de la performance commerciale.
  
  ---
  
## Structure du projet

```text
.
├── data/
│   └── README.md           # Informations sur les données DVF
├── notebooks/
│   └── cleaning_dvf.ipynb  # Nettoyage et préparation des données
├── sql/
│   ├── create_tables.sql  # Création des tables SQL
│   └── analysis_queries.sql # Requêtes d’analyse
├── powerbi/
│   └── dashboard.pbix     # Tableau de bord Power BI
└── README.md
```


## Méthodologie

1. **Collecte et nettoyage des données**
   - Import des fichiers DVF (2020 à 2025) pour l’Île-de-France.
   - Suppression des valeurs manquantes et aberrantes.
   - Calcul du prix au m² pour chaque transaction.
   - Création de la variable année.

2. **Modélisation SQL**
   - Création de la table `transactions_idf`.
   - Agrégation des données pour obtenir le prix moyen du marché par commune et par année.
   - Jointure pour comparer chaque transaction au prix du marché local.
   - Calcul de l’écart en pourcentage et attribution du statut :
     - Sous-évalué,
     - Prix cohérent,
     - Surévalué.

3. **Visualisation sous Power BI**
   - Création d’un tableau de bord “Vue Marché”.
   - Création d’un tableau de bord “Évaluation d’un bien”.
   - Mise en place de filtres par commune, année et statut.


---

---

## Résultats & Tableaux de bord

Deux tableaux de bord Power BI ont été réalisés afin de répondre aux besoins d’analyse du marché et d’évaluation des biens immobiliers.

### 1. Vue Marché

Ce tableau de bord permet d’analyser l’évolution du marché immobilier en Île-de-France :
- Évolution du prix moyen au m² par année,
- Comparaison des prix au m² par département,
- Indicateurs globaux :
  - Prix moyen au m²,
  - Surface moyenne,
  - Nombre total de ventes.

![Vue Marché](powerbi/vue_marché.png)

---

### 2. Évaluation d’un bien

Ce tableau de bord permet d’évaluer si un bien est vendu au bon prix par rapport au marché local :
- Filtres par **commune**, **année** et **statut du prix**,
- Indicateurs :
  - Prix moyen du marché,
  - Prix des biens analysés,
  - Écart moyen au marché (%),
- Classement automatique des biens :
  - Sous-évalué,
  - Prix cohérent,
  - Sur-évalué,
- Tableau détaillé transaction par transaction.

![Évaluation d’un bien](powerbi/évaluation_d'un_bien.png)


