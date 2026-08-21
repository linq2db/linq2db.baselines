-- YDB Ydb
DECLARE $EnumNullable Text(6) -- AnsiString
SET     $EnumNullable = 'Value1'u

SELECT
	COUNT(*) as Count_1
FROM
	ValueConversion t
WHERE
	CASE
		WHEN t.EnumNullable IS NOT NULL THEN t.EnumNullable
		ELSE t.`Enum`
	END = $EnumNullable

