-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.MiddleName as MiddleName
FROM
	Person p
WHERE
	p.PersonID = 1

