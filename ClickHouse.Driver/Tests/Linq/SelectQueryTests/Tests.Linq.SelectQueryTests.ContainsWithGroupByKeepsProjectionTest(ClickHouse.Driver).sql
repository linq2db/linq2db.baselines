-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID IN (
		SELECT
			t1.Key_1
		FROM
			(
				SELECT DISTINCT
					g_1.ParentID as Key_1
				FROM
					Child g_1
			) t1
	)
ORDER BY
	p.ParentID

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

