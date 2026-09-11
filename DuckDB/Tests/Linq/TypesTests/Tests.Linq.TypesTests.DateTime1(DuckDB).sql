-- DuckDB
DECLARE $Date  -- DateTime2
SET     $Date = '2009-09-20 00:00:00.000000'::TIMESTAMP

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
	CAST(t.DateTimeValue AS DATE) > $Date

