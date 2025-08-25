BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Field1,
	t2.Id,
	t2.Field1
FROM
	TestEntity1 t1
		LEFT JOIN TestEntity2 t2 ON t1.Id = t2.Id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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
-- Informix.DB2 Informix (asynchronously)

SELECT
	NVL(t1.Id, NULL),
	t1.Field1,
	NULL::Int,
	NULL::Int,
	NULL::NVarChar(255),
	t2.Id,
	t2.Id,
	t2.Field1,
	NULL::Int,
	NULL::NVarChar(255)
FROM
	TestEntity1 t1
		LEFT JOIN TestEntity2 t2 ON t1.Id = t2.Id
UNION ALL
SELECT
	NULL::Int,
	NULL::NVarChar(255),
	t1_1.Id,
	t1_1.Id,
	t1_1.Field1,
	NULL::Int,
	NULL::Int,
	NULL::NVarChar(255),
	t2_1.Id,
	t2_1.Field1
FROM
	TestEntity2 t2_1
		LEFT JOIN TestEntity1 t1_1 ON t2_1.Id = t1_1.Id
WHERE
	t1_1.Id IS NULL

