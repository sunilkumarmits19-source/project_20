# project_20
Data pipeline (Airflow + Postgres) for Project_20

Structure:
- dags/ : Airflow DAGs (minute,daily,weekly,monthly,yearly)
- project_20_bin/analytics_mw : analytics script (inserts summary rows)
- sql/ : create schema + sample queries
- docker-compose.yaml : local compose for airflow
