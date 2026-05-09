-- DuckDB

SELECT
	t.Str,
	Length(t.Str),
	'original-' || t.Str
FROM
	TestLengthModel t

-- DuckDB

SELECT
	t1.Id,
	t1.Str
FROM
	TestLengthModel t1

