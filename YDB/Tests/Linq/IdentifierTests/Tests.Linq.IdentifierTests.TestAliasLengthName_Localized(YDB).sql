-- YDB Ydb

SELECT
	z.FirstName as FirstName,
	z.PersonID as PersonID,
	z.LastName as LastName,
	z.MiddleName as MiddleName,
	z.Gender as Gender
FROM
	Person z
WHERE
	z.PersonID = 1

