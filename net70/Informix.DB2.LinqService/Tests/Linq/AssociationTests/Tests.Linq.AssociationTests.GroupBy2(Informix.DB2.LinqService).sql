BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.c1,
	t2.Value1
FROM
	(
		SELECT
			a_Parent1.ParentID as c1,
			a_Parent1.Value1
		FROM
			Child t1
				INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID
	) t2
GROUP BY
	t2.c1,
	t2.Value1

