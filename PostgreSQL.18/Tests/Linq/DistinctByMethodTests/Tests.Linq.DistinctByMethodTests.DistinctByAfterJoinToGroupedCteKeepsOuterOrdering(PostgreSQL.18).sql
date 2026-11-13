-- PostgreSQL.18 PostgreSQL12
WITH "CTE_1" ("Key_1", "Count_1")
AS
(
	SELECT
		g_1."ParentID",
		COUNT(*)
	FROM
		"Child" g_1
	GROUP BY
		g_1."ParentID"
)
SELECT
	t1."ParentID",
	t1."Value1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (p_1."Value1")
			p_1."ParentID",
			p_1."Value1",
			c_1."Count_1"
		FROM
			(
				SELECT
					p."ParentID",
					p."Value1"
				FROM
					"Parent" p
			) p_1
				INNER JOIN "CTE_1" c_1 ON p_1."ParentID" = c_1."Key_1"
		ORDER BY
			p_1."Value1",
			p_1."ParentID" DESC
	) t1
ORDER BY
	t1."ParentID" DESC

