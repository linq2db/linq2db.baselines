-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.FirstName as FirstName,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
ORDER BY
	p.PersonID

