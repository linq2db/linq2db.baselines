-- YDB Ydb
DECLARE $Ids0_1 Text(3) -- String
SET     $Ids0_1 = '123'u
DECLARE $Ids0_2 Text(3) -- String
SET     $Ids0_2 = '222'u

SELECT
	r.FirstName as FirstName,
	r.PersonID as ID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender
FROM
	Person r
WHERE
	r.PersonID = 4 AND (r.MiddleName NOT IN ($Ids0_1, $Ids0_2) AND r.MiddleName IS NOT NULL)

