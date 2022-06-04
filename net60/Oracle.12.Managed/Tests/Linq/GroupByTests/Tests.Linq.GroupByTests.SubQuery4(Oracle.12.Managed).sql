BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."n",
	Sum(t1."ParentID")
FROM
	(
		SELECT
			selectParam."ChildID" + 1 as "n",
			selectParam."ParentID"
		FROM
			"Child" selectParam
	) t1
GROUP BY
	t1."n"

