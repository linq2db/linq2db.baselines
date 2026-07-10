-- YDB Ydb
SELECT
	x.PersonID as PersonID,
	x.FirstName as FirstName,
	x.LastName as LastName,
	x.MiddleName as MiddleName
FROM
	Person x
WHERE
	x.FirstName = 'John'u

