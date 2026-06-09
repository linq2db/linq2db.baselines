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
	(Unwrap(CAST(p.PersonID AS Uint32)) & Unwrap(CAST(3 AS Uint32))) = 1

