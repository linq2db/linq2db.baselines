BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Value,
	concat('M', toString(t1.Id))
FROM
	InstanceClass t1

