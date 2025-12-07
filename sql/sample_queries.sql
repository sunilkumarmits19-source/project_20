-- sample verification queries
-- List last 50 rows
SELECT * FROM devices.daily_summary ORDER BY updated_at DESC LIMIT 50;

-- Count per device
SELECT device_id, COUNT(*) FROM devices.daily_summary GROUP BY device_id ORDER BY COUNT(*) DESC;

-- get recent date
SELECT MAX(summary_date) FROM devices.daily_summary;
