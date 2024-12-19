BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID + 1),
	4
FROM
	Parent p

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

