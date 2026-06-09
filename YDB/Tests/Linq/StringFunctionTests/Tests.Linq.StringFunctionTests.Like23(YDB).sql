-- YDB Ydb
DECLARE $pattern Text(6) -- String
SET     $pattern = '%h~%n%'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName NOT LIKE $pattern ESCAPE '~'s AND p.PersonID = 1

