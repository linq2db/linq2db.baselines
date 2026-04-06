-- DuckDB
DECLARE $true_value NVarChar(1) -- String
SET     $true_value = 'Y'

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.BoolValue
FROM
	ValueConversion t
WHERE
	t.BoolValue = CAST($true_value AS VARCHAR)

