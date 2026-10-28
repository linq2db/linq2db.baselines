-- ClickHouse.MySql ClickHouse
INSERT INTO SchemaScopedConversionRow
(
	Id,
	Value
)
VALUES
(
	1,
	toDateTime64('2020-01-01 13:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Value
FROM
	SchemaScopedConversionRow t1
LIMIT 2

