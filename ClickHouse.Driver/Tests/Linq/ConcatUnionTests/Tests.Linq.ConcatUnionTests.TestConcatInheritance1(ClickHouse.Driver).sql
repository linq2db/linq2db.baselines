-- ClickHouse.Driver ClickHouse

SELECT
	t1.EntityId,
	t1.Discr,
	t1.Value as Value_1,
	toInt32(NULL) as EntityId_1,
	toInt32(NULL) as Discr_1,
	toString(NULL) as Value_2
FROM
	ConcatTest t1
UNION ALL
SELECT
	toInt32(NULL) as EntityId,
	toInt32(NULL) as Discr,
	toString(NULL) as Value_1,
	t2.EntityId as EntityId_1,
	t2.Discr as Discr_1,
	t2.Value as Value_2
FROM
	ConcatTest t2
WHERE
	t2.Discr = 1

