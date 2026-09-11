-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(0) as projection__set_id__,
	t1.Discr,
	t1.EntityId,
	t1.Value as Value_1
FROM
	ConcatTest t1
UNION ALL
SELECT
	toInt32(1) as projection__set_id__,
	t2.Discr as Discr,
	t2.EntityId as EntityId,
	t2.Value as Value_1
FROM
	ConcatTest t2
WHERE
	t2.Discr = 1

