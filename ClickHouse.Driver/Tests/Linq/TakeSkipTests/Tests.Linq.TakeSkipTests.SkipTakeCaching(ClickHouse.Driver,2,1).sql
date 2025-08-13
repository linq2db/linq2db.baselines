BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.Value1
LIMIT 2, 1

