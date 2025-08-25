BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(CASE
		WHEN g_1."ChildID" > 30 THEN 1
		ELSE NULL
	END),
	COUNT(CASE
		WHEN g_1."ChildID" > 30 THEN 1
		ELSE NULL
	END),
	COUNT(*)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

