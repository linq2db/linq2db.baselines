-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1,
	c_2.ParentID,
	c_2.ChildID
FROM
	Parent t1
		INNER JOIN (
			SELECT
				c_1.ParentID as ParentID,
				c_1.ChildID as ChildID,
				ROW_NUMBER() OVER (PARTITION BY c_1.ParentID ORDER BY c_1.ChildID DESC) as rn
			FROM
				Child c_1
		) c_2 ON t1.ParentID = c_2.ParentID AND c_2.rn = 1

