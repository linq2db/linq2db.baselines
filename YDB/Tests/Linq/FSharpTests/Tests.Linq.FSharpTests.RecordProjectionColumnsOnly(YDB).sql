-- YDB Ydb

SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.LastName as LastName,
	'ибн Алёша'u as Item4
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

