-- ClickHouse.Driver ClickHouse

SELECT
	g_2.ChildId,
	g_2.ParentId,
	COUNT(*)
FROM
	(
		SELECT
			1 as ChildId,
			2 as ParentId
		FROM
			Child g_1
		WHERE
			1 = 0
	) g_2
GROUP BY
	g_2.ChildId,
	g_2.ParentId

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

