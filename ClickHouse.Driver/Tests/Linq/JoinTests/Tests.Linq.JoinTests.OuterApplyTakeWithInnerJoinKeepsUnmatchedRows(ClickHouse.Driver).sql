-- ClickHouse.Driver ClickHouse
SELECT
	c_1.ChildID,
	t1.ParentID
FROM
	Child c_1
		LEFT JOIN (
			SELECT
				x.ChildID as ChildID,
				x.rn as rn,
				p.ParentID as ParentID
			FROM
				(
					SELECT
						g_1.ParentID as ParentID,
						ROW_NUMBER() OVER (PARTITION BY g_1.ChildID ORDER BY g_1.GrandChildID) as rn,
						g_1.ChildID as ChildID
					FROM
						GrandChild g_1
				) x
					INNER JOIN Parent p ON x.ParentID = p.ParentID
		) t1 ON t1.ChildID = c_1.ChildID AND t1.rn = 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.ChildID,
	t1.GrandChildID
FROM
	GrandChild t1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

