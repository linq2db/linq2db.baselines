-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1,
	Parent p2
WHERE
	t1.Value1 = p2.Value1 OR t1.Value1 IS NULL AND p2.Value1 IS NULL

