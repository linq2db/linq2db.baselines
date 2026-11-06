-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	Floor(g_1."ParentID"::decimal % 3)::Int
FROM
	"Parent" g_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" x
		WHERE
			Floor(g_1."ParentID"::decimal % 3)::Int = Floor(x."ParentID"::decimal % 3)::Int AND
			(x."Value1" <> 1 OR x."Value1" IS NULL)
	)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	g_2."Key_1",
	COUNT(*) FILTER (WHERE g_2.c1 = False)
FROM
	(
		SELECT
			Floor(g_1."ParentID"::decimal % 2)::Int as "Key_1",
			CASE
				WHEN g_1."Value1" = 1 THEN True
				ELSE False
			END as c1
		FROM
			"Parent" g_1
	) g_2
GROUP BY
	g_2."Key_1"
HAVING
	COUNT(*) FILTER (WHERE g_2.c1 = False) > 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

