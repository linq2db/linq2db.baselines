-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1,
	t1.cond,
	t1.ParentID,
	t1.ChildID,
	t1.GrandChildID,
	t2.ParentID,
	t2.ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				a.ParentID as ParentID,
				a.ChildID as ChildID,
				a.GrandChildID as GrandChildID,
				1 as cond,
				ROW_NUMBER() OVER (PARTITION BY a.ParentID ORDER BY a.ParentID) as rn
			FROM
				GrandChild a
		) t1 ON t1.ParentID = p.ParentID AND t1.rn <= 1
		LEFT JOIN (
			SELECT
				a_1.ParentID as ParentID,
				a_1.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_1.ParentID ORDER BY a_1.ParentID) as rn
			FROM
				Child a_1
		) t2 ON t2.ParentID = p.ParentID AND t2.rn <= 1
WHERE
	p.ParentID = 6

