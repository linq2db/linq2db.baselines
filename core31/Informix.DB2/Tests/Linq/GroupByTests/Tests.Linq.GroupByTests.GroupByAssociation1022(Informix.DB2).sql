BeforeExecute
-- Informix.DB2 Informix

SELECT
	g_1.Value1
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					GrandChild keyParam
						INNER JOIN Parent a_Parent ON keyParam.ParentID = a_Parent.ParentID
				WHERE
					(t2.c1 = a_Parent.ParentID OR t2.c1 IS NULL AND a_Parent.ParentID IS NULL) AND
					keyParam.ChildID >= 20
			) as cnt,
			(
				SELECT
					Sum(p.ParentID)
				FROM
					GrandChild p
						INNER JOIN Parent a_Parent_1 ON p.ParentID = a_Parent_1.ParentID
				WHERE
					(t2.c1 = a_Parent_1.ParentID OR t2.c1 IS NULL AND a_Parent_1.ParentID IS NULL) AND
					p.ChildID >= 19
			) as ex,
			t2.Value1
		FROM
			(
				SELECT
					a_Parent_2.ParentID as c1,
					a_Parent_2.Value1
				FROM
					GrandChild t1
						INNER JOIN Parent a_Parent_2 ON t1.ParentID = a_Parent_2.ParentID
			) t2
		GROUP BY
			t2.c1,
			t2.Value1
	) g_1
WHERE
	g_1.cnt > 2 AND g_1.ex > 0

