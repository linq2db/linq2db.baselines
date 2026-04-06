-- DuckDB

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.DateTimeValue2,
	t.BoolValue,
	t.GuidValue,
	t.SmallIntValue,
	t.IntValue,
	t.BigIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

-- DuckDB
DECLARE $dt NVarChar(26) -- String
SET     $dt = '2010-12-14 05:00:07.425014'

UPDATE
	LinqDataTypes
SET
	DateTimeValue = CAST($dt AS TIMESTAMP)
WHERE
	LinqDataTypes.ID = 1

-- DuckDB

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.DateTimeValue2,
	t.BoolValue,
	t.GuidValue,
	t.SmallIntValue,
	t.IntValue,
	t.BigIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.ID = 1
LIMIT 1

-- DuckDB
DECLARE $pdt NVarChar(26) -- String
SET     $pdt = '2001-01-11 01:11:21.100000'

UPDATE
	LinqDataTypes
SET
	DateTimeValue = CAST($pdt AS TIMESTAMP)
WHERE
	LinqDataTypes.ID = 1

