BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Field1,
	t2.Id,
	t2.Field1
FROM
	TestEntity1 t1
		LEFT JOIN TestEntity2 t2 ON t1.Id = t2.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Field1,
	toInt32(NULL) as c1,
	toInt32(NULL) as Id_1,
	toString(NULL) as Field1_1,
	t2.Id as Id_2,
	t2.Id as Id_3,
	t2.Field1 as Field1_2,
	toInt32(NULL) as Id_4,
	toString(NULL) as Field1_3
FROM
	TestEntity1 t1
		LEFT JOIN TestEntity2 t2 ON t1.Id = t2.Id
UNION ALL
SELECT
	toInt32(NULL) as Id,
	toString(NULL) as Field1,
	t1_1.Id as c1,
	t1_1.Id as Id_1,
	t1_1.Field1 as Field1_1,
	toInt32(NULL) as Id_2,
	toInt32(NULL) as Id_3,
	toString(NULL) as Field1_2,
	t2_1.Id as Id_4,
	t2_1.Field1 as Field1_3
FROM
	TestEntity2 t2_1
		LEFT JOIN TestEntity1 t1_1 ON t2_1.Id = t1_1.Id
WHERE
	t1_1.Id IS NULL

