BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	(
		SELECT FIRST 3
			p.ParentID
		FROM
			GrandChild p
	) p_1
WHERE
	c_1.ParentID = p_1.ParentID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	(
		SELECT SKIP 12 FIRST 3
			p.ParentID
		FROM
			GrandChild p
	) p_1
WHERE
	c_1.ParentID = p_1.ParentID

