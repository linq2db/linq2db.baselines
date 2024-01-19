BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ID,
	x.BigIntValue
FROM
	LinqDataTypes x
WHERE
	(x.BigIntValue = toInt32(0) AND x.ID = toInt32(10) OR x.BigIntValue = toInt32(1) AND x.ID = toInt32(10))

