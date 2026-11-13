-- ClickHouse.MySql ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	(
		SELECT
			t1.ParentID
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
		LIMIT 1
	)

