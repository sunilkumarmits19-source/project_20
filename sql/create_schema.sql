-- Create analytics schema and sample summary table
CREATE SCHEMA IF NOT EXISTS devices;

CREATE TABLE IF NOT EXISTS devices.daily_summary (
  summary_date date NOT NULL,
  device_id text NOT NULL,
  rows_count bigint,
  avg_distance double precision,
  min_distance double precision,
  max_distance double precision,
  avg_voltage double precision,
  last_ts timestamptz,
  updated_at timestamptz DEFAULT now(),
  PRIMARY KEY (summary_date, device_id)
);
