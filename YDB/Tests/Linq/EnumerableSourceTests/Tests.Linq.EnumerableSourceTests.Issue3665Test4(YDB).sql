-- YDB Ydb

SELECT
	x.PersonID + y.item as c1
FROM
	Person x
		CROSS JOIN (VALUES
			(1), (3)
		) y(item)

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

