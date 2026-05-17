-- DuckDB

SELECT
	t1.Id,
	t1."Value",
	'M' || CAST(t1.Id AS VARCHAR)
FROM
	InstanceClass t1

