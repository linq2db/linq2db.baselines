-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1,
	c_1.ParentID,
	c_1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1,
	t1.ParentID,
	t1.Value1,
	CASE
		WHEN a_Parent.ParentID IS NOT NULL THEN a_Parent.Value1
		ELSE NULL
	END
FROM
	Parent t1
		INNER JOIN Child c_1 ON c_1.ParentID = t1.ParentID
		LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
WHERE
	t1.ParentID > 0 OR t1.Value1 > 0 OR a_Parent.Value1 > 0
ORDER BY
	t1.ParentID,
	t1.Value1,
	a_Parent.Value1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID,
	a_Parent.ParentID,
	a_Parent.Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

