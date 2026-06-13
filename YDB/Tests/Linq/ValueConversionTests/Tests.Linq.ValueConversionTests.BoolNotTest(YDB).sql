-- YDB Ydb
DECLARE $false_value Text(1) -- AnsiString
SET     $false_value = 'N'u

SELECT
	t.Id as Id,
	t.Value1 as Value1,
	t.Value2 as Value2,
	t.BoolValue as BoolValue
FROM
	ValueConversion t
WHERE
	t.BoolValue = $false_value

