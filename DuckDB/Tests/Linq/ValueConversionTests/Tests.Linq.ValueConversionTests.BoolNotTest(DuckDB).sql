-- DuckDB
DECLARE $false_value NVarChar(1) -- String
SET     $false_value = 'N'

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.BoolValue
FROM
	ValueConversion t
WHERE
	t.BoolValue = CAST($false_value AS VARCHAR)

