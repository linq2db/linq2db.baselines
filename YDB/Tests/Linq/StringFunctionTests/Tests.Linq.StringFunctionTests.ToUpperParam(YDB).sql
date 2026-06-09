-- YDB Ydb
DECLARE $param Text(4) -- String
SET     $param = 'JOHN'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	Unicode::ToUpper(p.FirstName) = $param AND p.PersonID = 1

