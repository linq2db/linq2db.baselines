-- DuckDB
DECLARE $dt NVarChar(26) -- String
SET     $dt = '2020-02-29 17:54:55.123123'

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue = CAST($dt AS TIMESTAMP)

