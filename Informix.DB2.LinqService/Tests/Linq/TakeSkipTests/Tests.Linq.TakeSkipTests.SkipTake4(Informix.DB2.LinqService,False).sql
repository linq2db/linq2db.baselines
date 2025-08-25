BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT SKIP 2
	t2.ParentID,
	t2.ChildID
FROM
	(
		SELECT SKIP 1 FIRST 7
			t1.ChildID,
			t1.ParentID
		FROM
			Child t1
		ORDER BY
			t1.ChildID DESC
	) t2
ORDER BY
	t2.ChildID

