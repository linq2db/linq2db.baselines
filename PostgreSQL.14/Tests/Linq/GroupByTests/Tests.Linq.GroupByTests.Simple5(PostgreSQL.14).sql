BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			g_1."ParentID" as "Key_1"
		FROM
			"GrandChild" g_1
		GROUP BY
			g_1."ParentID",
			g_1."ChildID"
	) g_2
GROUP BY
	g_2."Key_1"

