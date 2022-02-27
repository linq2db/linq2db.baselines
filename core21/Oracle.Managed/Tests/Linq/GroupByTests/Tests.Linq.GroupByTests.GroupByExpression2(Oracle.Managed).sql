BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Key_1",
	Round(AVG(t1."ParentID"), 27)
FROM
	(
		SELECT
			selectParam."ChildID" as "Key_1",
			selectParam."ParentID"
		FROM
			"Child" selectParam
	) t1
GROUP BY
	t1."Key_1"

