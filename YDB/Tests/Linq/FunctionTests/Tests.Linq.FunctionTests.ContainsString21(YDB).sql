-- YDB Ydb
DECLARE $Ids0_1 Text(4) -- String
SET     $Ids0_1 = 'John'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName IN ($Ids0_1)

