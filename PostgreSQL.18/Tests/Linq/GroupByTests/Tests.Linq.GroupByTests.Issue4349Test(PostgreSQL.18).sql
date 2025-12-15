-- PostgreSQL.18 PostgreSQL

SELECT
	t1."A",
	t1."ParentID"
FROM
	(
		SELECT
			0 as "A",
			g_1."ParentID"
		FROM
			"Parent" g_1
		GROUP BY
			g_1."ParentID"
	) t1
ORDER BY
	t1."A"

