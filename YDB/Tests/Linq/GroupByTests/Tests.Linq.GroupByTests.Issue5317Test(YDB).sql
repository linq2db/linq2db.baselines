-- YDB Ydb

SELECT
	t2.ReferenceName as ReferenceName
FROM
	TestTable g_1
		INNER JOIN (
			SELECT
				a_Reference.Name as ReferenceName,
				ROW_NUMBER() OVER (PARTITION BY t1.Id ORDER BY t1.Id) as rn,
				t1.Id as Id
			FROM
				TestTable t1
					INNER JOIN Reference a_Reference ON t1.ReferenceId = a_Reference.Id
		) t2 ON g_1.Id = t2.Id
WHERE
	t2.rn = 1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.ReferenceId as ReferenceId,
	a_Reference.Id as Id_1,
	a_Reference.Name as Name_1
FROM
	TestTable t1
		INNER JOIN Reference a_Reference ON t1.ReferenceId = a_Reference.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.ReferenceId as ReferenceId
FROM
	TestTable t1

