BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ID,
	x.BigIntValue
FROM
	LinqDataTypes x
WHERE
	x.BigIntValue IN (toInt32(0))

