CREATE SCHEMA IF NOT EXISTS devices;

CREATE TABLE IF NOT EXISTS devices.envelope_rows (
  id bigserial PRIMARY KEY,
  src_id bigint,
  device_id varchar(64),
  timestamp_utc timestamptz,
  distance_km double precision,
  voltage double precision,
  classification varchar(64),
  processed_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS devices.deviation_summary (
  id bigserial PRIMARY KEY,
  device_id varchar(64),
  chain_km double precision,
  total_samples bigint,
  over_plus_pct double precision,
  under_plus_pct double precision,
  over_minus_pct double precision,
  under_minus_pct double precision,
  avg_pos double precision,
  avg_neg double precision,
  computed_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS devices.graphical_results (
  id bigserial PRIMARY KEY,
  meta_json jsonb,
  points_json jsonb,
  lines_json jsonb,
  deviations_json jsonb,
  created_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS devices.fault_localization (
  id bigserial PRIMARY KEY,
  deviceA varchar(64),
  deviceB varchar(64),
  x1 double precision,
  x2 double precision,
  f1 double precision,
  f2 double precision,
  x_weighted double precision,
  x_linear double precision,
  x_final double precision,
  created_at timestamptz DEFAULT now()
);

CREATE TABLE IF NOT EXISTS devices.pipeline_state (
  name varchar(64) PRIMARY KEY,
  last_processed timestamptz
);
