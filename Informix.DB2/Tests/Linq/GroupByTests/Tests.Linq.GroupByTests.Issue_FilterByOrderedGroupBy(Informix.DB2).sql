BeforeExecute
-- Informix.DB2 Informix

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
					(
						SELECT
							MAX(g_1.ChildID) as Max_1,
							g_1.ParentID
						FROM
							Child g_1
						GROUP BY
							g_1.ParentID
					) x
				ORDER BY
					x.Max_1 DESC
			) t1
		WHERE
			t.ParentID = t1.ParentID
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

