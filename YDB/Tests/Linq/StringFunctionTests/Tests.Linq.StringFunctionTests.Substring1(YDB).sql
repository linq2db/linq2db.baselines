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
	Unicode::Substring(p.FirstName, 2 - 1, (Unwrap(CAST(Unicode::GetLength(p.FirstName) AS Int32)) - 1)) = 'ohn'u AND
	p.PersonID = 1

