-- ClickHouse.Driver ClickHouse
INSERT INTO ConfigurationScopedColumnRow
(
	Id,
	Value
)
VALUES
(
	1,
	toDateTime64('2026-06-01 10:11:12.1234567', 7)
)

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Value
FROM
	ConfigurationScopedColumnRow t1
LIMIT 2

