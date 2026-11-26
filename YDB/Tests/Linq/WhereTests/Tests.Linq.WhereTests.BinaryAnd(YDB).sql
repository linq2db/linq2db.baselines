-- YDB Ydb
SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	BitCast((BitCast(p.PersonID AS Uint32) & BitCast(3 AS Uint32)) AS Int32) = 1

