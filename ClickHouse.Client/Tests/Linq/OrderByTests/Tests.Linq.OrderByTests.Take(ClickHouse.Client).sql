BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
				INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID
				INNER JOIN GrandChild g_1 ON c_1.ChildID = g_1.ChildID
		LIMIT 3
	) t1
ORDER BY
	t1.ParentID

