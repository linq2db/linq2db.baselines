-- YDB Ydb

SELECT
	p.PersonID as Item1,
	p.FirstName as Item2,
	p.LastName as Item3,
	'ибн Алёша'u as Item4
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

