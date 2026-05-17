-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN (g_1."ChildID"::decimal % 2)::decimal = 0 THEN g_1."ParentID"
				ELSE NULL
			END as "Key_1"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."Key_1"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

