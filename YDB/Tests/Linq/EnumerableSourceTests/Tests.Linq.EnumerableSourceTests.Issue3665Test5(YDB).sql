-- YDB Ydb

SELECT
	y.item as item_1
FROM
	Person x
		CROSS JOIN (VALUES
			('M'u), ('F'u), ('U'u), ('O'u)
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

