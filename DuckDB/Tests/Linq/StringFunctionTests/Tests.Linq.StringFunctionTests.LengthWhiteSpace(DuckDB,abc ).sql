-- DuckDB

SELECT
	t.Str,
	Length(t.Str)
FROM
	TestLengthModel t
LIMIT 2

