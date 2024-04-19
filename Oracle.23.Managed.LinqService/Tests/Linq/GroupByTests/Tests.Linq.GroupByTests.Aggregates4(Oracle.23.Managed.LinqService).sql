BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(CASE
		WHEN g_1."ChildID" > 30 THEN 1
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."ChildID" > 30 THEN g_1."ChildID"
		ELSE NULL
	END)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

