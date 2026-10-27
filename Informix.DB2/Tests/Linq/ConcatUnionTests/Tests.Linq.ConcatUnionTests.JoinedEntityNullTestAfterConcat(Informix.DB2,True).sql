-- Informix.DB2 Informix
SELECT
	x_1.ParentID
FROM
	(
		SELECT
			x.ParentID,
			NULL::Int as Child
		FROM
			Parent x
		UNION ALL
		SELECT
			t1.ParentID,
			c_1.ParentID as Child
		FROM
			Parent t1
				LEFT JOIN Child c_1 ON c_1.ParentID = t1.ParentID
	) x_1
WHERE
	x_1.Child IS NULL

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- Informix.DB2 Informix
SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

