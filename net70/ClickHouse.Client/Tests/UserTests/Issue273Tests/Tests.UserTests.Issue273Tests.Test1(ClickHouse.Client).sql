BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.ID,
	x.BigIntValue
FROM
	LinqDataTypes x
WHERE
	x.BigIntValue IN (toInt32(0), toInt32(1))

