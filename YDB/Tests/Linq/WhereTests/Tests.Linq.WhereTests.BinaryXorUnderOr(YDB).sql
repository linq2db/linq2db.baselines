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
	BitCast((BitCast(p.PersonID AS Uint32) | BitCast(BitCast((BitCast(p.PersonID AS Uint32) ^ BitCast(1 AS Uint32)) AS Int32) AS Uint32)) AS Int32) = p.PersonID

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

