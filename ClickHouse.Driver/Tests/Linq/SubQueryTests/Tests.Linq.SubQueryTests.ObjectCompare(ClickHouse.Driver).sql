BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	c_1.ChildID + 1
FROM
	Parent p,
	Child c_1
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	c_1.ChildID > -1 AND p.ParentID = a_Parent.ParentID AND
	(p.Value1 = a_Parent.Value1 OR p.Value1 IS NULL AND a_Parent.Value1 IS NULL)

