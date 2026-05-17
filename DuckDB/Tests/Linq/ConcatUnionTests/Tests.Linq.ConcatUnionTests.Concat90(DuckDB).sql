-- DuckDB

SELECT
	t1.Id,
	t1.Field1,
	t2.Id,
	t2.Field1
FROM
	TestEntity1 t1
		LEFT JOIN TestEntity2 t2 ON t1.Id = t2.Id

-- DuckDB

SELECT
	t1.Id,
	t1.Field1,
	t2.Id,
	t2.Field1
FROM
	TestEntity2 t2
		LEFT JOIN TestEntity1 t1 ON t2.Id = t1.Id
WHERE
	t1.Id IS NULL

-- DuckDB

SELECT
	t1.Id,
	t1.Field1,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR),
	t2.Id,
	t2.Id,
	t2.Field1,
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR)
FROM
	TestEntity1 t1
		LEFT JOIN TestEntity2 t2 ON t1.Id = t2.Id
UNION ALL
SELECT
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR),
	t1_1.Id,
	t1_1.Id,
	t1_1.Field1,
	CAST(NULL AS INTEGER),
	CAST(NULL AS INTEGER),
	CAST(NULL AS VARCHAR),
	t2_1.Id,
	t2_1.Field1
FROM
	TestEntity2 t2_1
		LEFT JOIN TestEntity1 t1_1 ON t2_1.Id = t1_1.Id
WHERE
	t1_1.Id IS NULL

