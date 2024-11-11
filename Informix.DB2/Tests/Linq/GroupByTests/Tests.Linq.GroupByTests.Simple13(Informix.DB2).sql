BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.ChildID_1
FROM
	(
		SELECT
			t1.ParentID + 1 as ParentID,
			t1.ChildID,
			NULL::Int as ChildID_1
		FROM
			GrandChild t1
	) t2
GROUP BY
	t2.ParentID,
	t2.ChildID

