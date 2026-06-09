-- YDB Ydb
DECLARE $str Text(6) -- String
SET     $str = '%o~%h%'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName NOT LIKE $str ESCAPE '~'s AND p.PersonID = 1

