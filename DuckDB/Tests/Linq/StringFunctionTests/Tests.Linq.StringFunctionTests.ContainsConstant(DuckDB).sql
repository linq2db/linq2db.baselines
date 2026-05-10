-- DuckDB

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE '%jOh%' ESCAPE '~' AND p.PersonID = 1

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName NOT LIKE '%jOh%' ESCAPE '~' AND p.PersonID = 1

