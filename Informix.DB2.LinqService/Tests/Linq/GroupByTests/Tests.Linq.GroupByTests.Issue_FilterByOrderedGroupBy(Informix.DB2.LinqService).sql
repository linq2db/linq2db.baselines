BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.ParentID,
	t.ChildID
FROM
	Child t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 2
					x.ParentID
				FROM
					Child x
				GROUP BY
					x.ParentID
				ORDER BY
					MAX(x.ChildID) DESC
			) t1
		WHERE
			t.ParentID = t1.ParentID
	)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

