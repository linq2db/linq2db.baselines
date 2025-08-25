BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Parent p
		LEFT JOIN (
			SELECT
				a_Children.ParentID as ParentID,
				a_Children.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY a_Children.ParentID ORDER BY a_Children.ChildID) as rn
			FROM
				Child a_Children
		) t1 ON p.ParentID = t1.ParentID AND t1.rn <= 1

