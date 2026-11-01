-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID,
	t1.GrandChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				g_1.ParentID as ParentID,
				g_1.GrandChildID as GrandChildID
			FROM
				Child x
					RIGHT JOIN GrandChild g_1 ON g_1.ChildID = x.ChildID
		) t1 ON p.ParentID = t1.ParentID AND now() < toDateTime64('2000-01-01 00:00:00.0000000', 7)

