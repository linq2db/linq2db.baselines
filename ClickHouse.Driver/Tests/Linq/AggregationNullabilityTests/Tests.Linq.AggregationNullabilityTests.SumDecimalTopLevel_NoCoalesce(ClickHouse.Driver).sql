-- ClickHouse.Driver ClickHouse

SELECT
	sumOrNull(i.DecimalValue)
FROM
	Inner i
WHERE
	i.Group = 1

