-- PostgreSQL.13 PostgreSQL12
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
	t2."ParentID",
	t2."Value1",
	t2."Count_1"
FROM
	(
		SELECT DISTINCT ON (p."Value1")
			p."ParentID",
			p."Value1",
			c_1."Count_1"
		FROM
			(
				SELECT
					t1."Key_1",
					t1."Count_1"
				FROM
					"CTE_1" t1
			) c_1
				INNER JOIN "Parent" p ON c_1."Key_1" = p."ParentID"
		ORDER BY
			p."Value1",
			p."ParentID" DESC
	) t2
ORDER BY
	t2."ParentID" DESC

