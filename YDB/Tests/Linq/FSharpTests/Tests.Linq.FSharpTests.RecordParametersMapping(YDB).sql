-- YDB Ydb

SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName,
	p.LastName as LastName,
	p.MiddleName as MiddleName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

