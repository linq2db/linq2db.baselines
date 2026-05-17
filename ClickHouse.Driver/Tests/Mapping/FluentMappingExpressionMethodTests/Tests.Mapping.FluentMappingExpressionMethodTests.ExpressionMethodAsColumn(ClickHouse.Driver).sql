-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value,
	concat('M', toString(t1.Id))
FROM
	InstanceClass t1

