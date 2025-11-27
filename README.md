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

