BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1",
	SUM(t1."ParentID")
FROM
	(
		SELECT
			g_1."ChildID" + 1 as "Key_1",
			g_1."ParentID"
		FROM
			"Child" g_1
	) t1
GROUP BY
	t1."Key_1"

