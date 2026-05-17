-- DuckDB

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	(SUBSTR(p.FirstName, 1, 3 - 1) || '123' || SUBSTR(p.FirstName, 3 + 1)) = 'Jo123n' AND
	p.PersonID = 1

