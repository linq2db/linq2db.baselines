-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 2

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.LastName
LIMIT 1 OFFSET $skip 

