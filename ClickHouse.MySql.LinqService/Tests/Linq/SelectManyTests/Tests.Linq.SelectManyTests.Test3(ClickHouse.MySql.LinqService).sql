BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Parent t1
		INNER JOIN GrandChild g_1 ON t1.ParentID = g_1.ParentID AND g_1.ParentID IS NOT NULL
		CROSS JOIN Person t

