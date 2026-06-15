-- YDB Ydb
DECLARE $id Int32
SET     $id = 1
DECLARE $name Text(4) -- String
SET     $name = 'John'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.PersonID = $id AND p.FirstName = $name

