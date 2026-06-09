-- YDB Ydb

SELECT
	t.Id as Id,
	t.Value1 as Value1,
	t.Value2 as Value2
FROM
	ValueConversion t
WHERE
	t.Value2 IS NULL

