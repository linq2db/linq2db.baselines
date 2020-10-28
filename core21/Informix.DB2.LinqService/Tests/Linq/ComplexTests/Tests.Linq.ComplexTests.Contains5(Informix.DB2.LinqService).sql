BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	(c_1.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			(
				SELECT SKIP 1 FIRST 100
					p.ParentID
				FROM
					Parent p
			) t1
	))

