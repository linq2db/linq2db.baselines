-- YDB Ydb
DECLARE $Ids0_1 Text(4) -- String
SET     $Ids0_1 = 'John'u
DECLARE $Ids0_2 Text(6) -- String
SET     $Ids0_2 = 'Pupkin'u
DECLARE $Ids0_1_1 Text(4) -- String
SET     $Ids0_1_1 = 'John'u
DECLARE $Ids0_2_1 Text(6) -- String
SET     $Ids0_2_1 = 'Pupkin'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName IN ($Ids0_1, $Ids0_2) OR p.LastName IN ($Ids0_1_1, $Ids0_2_1)

