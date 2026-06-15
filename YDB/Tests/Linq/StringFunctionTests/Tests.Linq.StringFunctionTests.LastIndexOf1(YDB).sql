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
	Unwrap(CAST(Unicode::GetLength(p.LastName) AS Int32)) - (Unicode::Find(Unicode::Reverse(p.LastName), 'p'u) + 1) = 2 AND
	Unicode::Find(p.LastName, 'p'u) + 1 <> 0 AND p.PersonID = 1

