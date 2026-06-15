-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) = 4 AND
	p.PersonID = 1

