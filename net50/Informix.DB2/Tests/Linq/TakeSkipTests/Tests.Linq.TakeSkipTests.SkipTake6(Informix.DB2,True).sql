BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
		INNER JOIN (
			SELECT FIRST 3
				p.ParentID
			FROM
				GrandChild p
		) t1 ON 1=1
WHERE
	c_1.ParentID = t1.ParentID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
		INNER JOIN (
			SELECT SKIP 12 FIRST 3
				p.ParentID
			FROM
				GrandChild p
		) t1 ON 1=1
WHERE
	c_1.ParentID = t1.ParentID

