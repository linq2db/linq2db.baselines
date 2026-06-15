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
	Unicode::Substring(p.FirstName, CAST(Unicode::GetLength(p.FirstName) - 3 AS UInt32), 3) = 'ohn'u AND
	p.PersonID = 1

