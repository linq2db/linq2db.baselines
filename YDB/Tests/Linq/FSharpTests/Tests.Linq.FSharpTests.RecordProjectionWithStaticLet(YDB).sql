-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.LastName = 'Pupkin'u AND p.FirstName = 'John'u
LIMIT 2

