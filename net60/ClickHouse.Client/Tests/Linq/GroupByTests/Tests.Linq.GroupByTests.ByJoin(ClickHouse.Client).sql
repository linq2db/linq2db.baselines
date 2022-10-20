BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	sumOrNull(c2.ChildID)
FROM
	Child c1
		INNER JOIN Child c2 ON c1.ChildID = c2.ChildID + toInt32(1)
GROUP BY
	c1.ParentID

