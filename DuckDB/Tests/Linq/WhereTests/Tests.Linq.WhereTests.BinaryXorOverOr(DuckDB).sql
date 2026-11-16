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
	(xor(p.PersonID, 1) | 2) = 3

