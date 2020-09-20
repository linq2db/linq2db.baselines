BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			Count(*)
		FROM
			Child keyParam
		WHERE
			t2.ParentID = keyParam.ParentID AND keyParam.ChildID > 30
	),
	(
		SELECT
			Count(*)
		FROM
			Child t1
		WHERE
			t2.ParentID = t1.ParentID AND t1.ChildID > 30
	),
	Count(*)
FROM
	Child t2
GROUP BY
	t2.ParentID

