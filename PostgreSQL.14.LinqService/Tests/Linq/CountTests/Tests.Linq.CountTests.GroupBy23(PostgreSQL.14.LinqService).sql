BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	COUNT(CASE
		WHEN g_1."ParentID" < 2 THEN 1
		ELSE NULL
	END)
FROM
	"Parent" g_1
WHERE
	g_1."ParentID" > -1
GROUP BY
	g_1."Value1"

