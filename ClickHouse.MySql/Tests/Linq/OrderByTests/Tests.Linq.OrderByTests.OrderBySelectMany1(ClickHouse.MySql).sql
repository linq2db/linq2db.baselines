-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	c_1.ChildID
FROM
	Parent t1
		CROSS JOIN Child c_1
		INNER JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	t1.ParentID = a_Parent.ParentID AND (t1.Value1 = a_Parent.Value1 OR t1.Value1 IS NULL AND a_Parent.Value1 IS NULL)
ORDER BY
	t1.ParentID,
	c_1.ChildID

