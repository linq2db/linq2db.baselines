-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 1

