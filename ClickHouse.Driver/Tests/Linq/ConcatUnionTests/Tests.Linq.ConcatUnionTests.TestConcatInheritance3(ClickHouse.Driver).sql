-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(0) as projection__set_id__,
	t.Discr,
	t.EntityId,
	t.Value as Value_1
FROM
	ConcatTest t
WHERE
	t.Discr = 0
UNION ALL
SELECT
	toInt32(1) as projection__set_id__,
	t1.Discr as Discr,
	t1.EntityId as EntityId,
	t1.Value as Value_1
FROM
	ConcatTest t1
WHERE
	t1.Discr = 1

