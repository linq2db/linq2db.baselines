-- DuckDB
DECLARE $Date NVarChar(26) -- String
SET     $Date = '2009-09-20 00:00:00.000000'

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
	CAST(t.DateTimeValue AS DATE) > CAST($Date AS TIMESTAMP)

