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
	CASE
		WHEN Length(p.FirstName) = 2 THEN p.FirstName || '123'
		ELSE SUBSTR(p.FirstName, 1, 3 - 1) || '123' || SUBSTR(p.FirstName, 3 + 0)
	END = 'Jo123hn' AND
	p.PersonID = 1

