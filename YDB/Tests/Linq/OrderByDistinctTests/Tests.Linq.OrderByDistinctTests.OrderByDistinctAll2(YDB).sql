-- YDB Ydb
DECLARE $take Int32
SET     $take = 2
DECLARE $skip Int32
SET     $skip = 1

SELECT
	r_1.ID as ID,
	r_1.LastName as LastName,
	r_1.FirstName as FirstName
FROM
	(
		SELECT DISTINCT
			r.FirstName as FirstName,
			r.PersonID as ID,
			r.LastName as LastName,
			r.MiddleName as MiddleName,
			r.Gender as Gender
		FROM
			Person r
	) r_1
ORDER BY
	r_1.FirstName
LIMIT $take OFFSET $skip 

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

