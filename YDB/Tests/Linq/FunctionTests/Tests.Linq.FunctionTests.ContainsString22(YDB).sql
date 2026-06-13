-- YDB Ydb
DECLARE $nm Text(4) -- String
SET     $nm = 'John'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName IN ($nm)

