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
DECLARE $dt  -- DateTime2
SET     $dt = '2010-12-14 05:00:07.425014'::TIMESTAMP

UPDATE
	LinqDataTypes
SET
	DateTimeValue2 = $dt
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
DECLARE $pdt  -- DateTime2
SET     $pdt = NULL

UPDATE
	LinqDataTypes
SET
	DateTimeValue2 = $pdt
WHERE
	LinqDataTypes.ID = 1

