-- YDB Ydb
DECLARE $str Text(4) -- String
SET     $str = '%oh%'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName LIKE $str ESCAPE '~'s AND p.PersonID = 1

