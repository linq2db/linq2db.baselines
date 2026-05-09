-- DuckDB

SELECT
	'I-' || CAST(x.PersonID AS VARCHAR),
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	CAST(NULL AS VARCHAR),
	'QUASI-' || x_1.FirstName
FROM
	Person x_1

