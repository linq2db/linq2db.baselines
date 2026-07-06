-- YDB Ydb

SELECT
	x.ID as ID,
	x.BigIntValue as BigIntValue
FROM
	LinqDataTypes x
WHERE
	x.BigIntValue = 0 AND x.ID = 10 OR x.BigIntValue = 1 AND x.ID = 10

