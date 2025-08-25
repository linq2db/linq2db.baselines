BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID),
	3
FROM
	Parent p

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

