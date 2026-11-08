-- ClickHouse.MySql ClickHouse
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
		) t1 ON p.ParentID = t1.ParentID AND toYear(now()) < 2000

