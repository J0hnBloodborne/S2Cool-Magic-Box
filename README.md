An automated data pipeline and dashboard for analyzing and predicting thermal performance in cooling systems. The project integrates environmental data (GHI, temperature) to forecast cooling efficiency using
multiple models and provides a React-based frontend for visualization.
---
title: S2Cool Magic Box
emoji: 🪄
colorFrom: blue
colorTo: green
sdk: docker
pinned: false
---

# S2Cool Magic Box
S2Cool API & Frontend Dashboard---
title: S2Cool Magic Box
emoji: 🪄
colorFrom: blue
colorTo: green
sdk: docker
pinned: false
---

Key Components
Backend: FastAPI server (main.py) providing endpoints for model predictions, Google Drive data integration, and system diagnostics.

Frontend: A modern React application utilizing Vite, Tailwind CSS, and Recharts to visualize KPIs, backtest results, and seasonal thermal trends.

Data Ingest: A Poetry-managed Python package for fetching and preprocessing historical and current environmental data into a structured database.

ML Pipeline: Modular scripts for exploratory data analysis (EDA), feature engineering (cyclical time features), and model training/promotion.

/Static Model
Contains the trained machine learning artifacts and the core logic for training.

artifacts/: Serialized XGBoost models (.joblib), feature importance rankings, and performance metrics for both GHI and temperature prediction.

scripts/: Implementation of the data loader, feature engineering pipeline, and training orchestration used to generate model versions.

/ingest
The data acquisition layer.

api.py & db.py: Logic for interfacing with external data sources and managing local storage.

Makefile: Shortcuts for running tests and executing the ingestion service.

/pipeline
The development and research environment.

Jupyter Notebooks: Step-by-step EDA and modeling experiments used to validate the predictive approach.

visualizations/: Generated plots including correlation heatmaps, residual analysis, and time-series comparisons used for performance auditing.
