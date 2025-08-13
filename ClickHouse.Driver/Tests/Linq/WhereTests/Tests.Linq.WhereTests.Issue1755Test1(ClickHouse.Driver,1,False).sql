BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	c_1.ParentID,
	c_1.Value1
FROM
	Parent c_1
WHERE
	c_1.ParentID = 1 AND c_1.Value1 IS NOT NULL

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

