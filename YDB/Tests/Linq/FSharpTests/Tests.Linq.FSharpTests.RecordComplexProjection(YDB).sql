-- YDB Ydb

SELECT
	p.PersonID as Item1,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.PersonID = 1 AND p.FirstName = 'John'u AND p.LastName = 'Pupkin'u
LIMIT 2

