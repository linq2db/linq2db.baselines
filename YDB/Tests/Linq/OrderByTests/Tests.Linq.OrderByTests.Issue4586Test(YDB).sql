-- YDB Ydb
DECLARE $take Int32
SET     $take = 2
DECLARE $skip Int32
SET     $skip = 1

SELECT
	x.FirstName as FirstName,
	x.PersonID as ID,
	x.LastName as LastName,
	x.MiddleName as MiddleName,
	x.Gender as Gender
FROM
	Person x
WHERE
	x.FirstName LIKE 'J%'u ESCAPE '~'s
ORDER BY
	x.PersonID DESC
LIMIT $take OFFSET $skip 

