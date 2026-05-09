-- DuckDB

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE '%JOHN' ESCAPE '~' AND p.PersonID = 1

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName NOT LIKE '%JOHN' ESCAPE '~' AND p.PersonID = 1

