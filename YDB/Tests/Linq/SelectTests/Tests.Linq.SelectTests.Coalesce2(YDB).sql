-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.MiddleName as MiddleName,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.PersonID = 1

