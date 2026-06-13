-- YDB Ydb

SELECT
	t.Str as Str,
	CAST(Unicode::GetLength(t.Str) AS Int32) as Length_1
FROM
	TestLengthModel t
LIMIT 2

