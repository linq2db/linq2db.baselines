-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	g_1.ParentID
FROM
	Child g_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Parent t
		WHERE
			t.ParentID = 1 AND t.ParentID = g_1.ParentID
	)

-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	g_1.ParentID
FROM
	Child g_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Parent t
		WHERE
			t.ParentID = 2 AND t.ParentID = g_1.ParentID
	)

