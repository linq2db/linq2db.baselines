-- YDB Ydb
DECLARE $Ids0_1 Text(2) -- String
SET     $Ids0_1 = 'Ko'u

SELECT
	r.FirstName as FirstName,
	r.PersonID as ID,
	r.LastName as LastName,
	r.MiddleName as MiddleName,
	r.Gender as Gender
FROM
	Person r
WHERE
	r.PersonID = 3 AND (r.MiddleName IN ($Ids0_1) OR r.MiddleName IS NULL)

