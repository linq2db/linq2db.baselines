BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			t.ParentID,
			t.Value1,
			(
				SELECT
					COUNT(*)
				FROM
					GrandChild a_GrandChildrenX
				WHERE
					t.ParentID = a_GrandChildrenX.ParentID AND a_GrandChildrenX.ChildID > 22
			) as COUNT_1
		FROM
			Parent t
	) t1
WHERE
	t1.COUNT_1 > 1
ORDER BY
	t1.ParentID

