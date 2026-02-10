-- ClickHouse.MySql ClickHouse

SELECT
	pmp1.ChildID
FROM
	(
		SELECT DISTINCT
			g_1.ParentID as ParentID
		FROM
			Child g_1
	) pmp
		CROSS JOIN Child pmp1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

