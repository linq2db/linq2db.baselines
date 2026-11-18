-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	g_2."Key_1",
	COUNT(CASE
		WHEN g_2.c1 = False THEN 1
		ELSE NULL
	END)
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
	COUNT(CASE
		WHEN g_2.c1 = False THEN 1
		ELSE NULL
	END) > 1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

