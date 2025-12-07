from datetime import datetime
from airflow import DAG
from airflow.operators.bash import BashOperator

with DAG(
    dag_id="monthly_pipeline",
    start_date=datetime(2025,12,1),
    schedule_interval="@monthly",
    catchup=False,
    tags=["project_20"],
) as dag:
    run = BashOperator(
        task_id="run_pipeline_monthly",
        bash_command="/usr/local/bin/analytics_mw --monthly || true",
        env={"DATABASE_URL": "{{ conn.project_2_db.get_uri() }}"},
    )
