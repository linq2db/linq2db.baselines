BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.EntityId,
	t.Discr,
	t.Value as Value_1,
	toInt32(NULL) as EntityId_1,
	toInt32(NULL) as Discr_1,
	toString(NULL) as Value_2
FROM
	ConcatTest t
WHERE
	t.Discr = 0
UNION ALL
SELECT
	toInt32(NULL) as EntityId,
	toInt32(NULL) as Discr,
	toString(NULL) as Value_1,
	t1.EntityId as EntityId_1,
	t1.Discr as Discr_1,
	t1.Value as Value_2
FROM
	ConcatTest t1
WHERE
	t1.Discr = 1

