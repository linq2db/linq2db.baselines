-- YDB Ydb
DECLARE $true_value Text(1) -- AnsiString
SET     $true_value = 'Y'u

SELECT
	t.Id as Id,
	t.Value1 as Value1,
	t.Value2 as Value2,
	t.BoolValue as BoolValue
FROM
	ValueConversion t
WHERE
	t.BoolValue = $true_value

