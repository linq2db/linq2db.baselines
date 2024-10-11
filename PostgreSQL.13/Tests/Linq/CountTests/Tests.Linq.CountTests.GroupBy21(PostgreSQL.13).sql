BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	COUNT(CASE
		WHEN t1."ParentID" < 3 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			g_1."ParentID" + 1 as "ParentID",
			g_1."ChildID"
		FROM
			"Child" g_1
		WHERE
			g_1."ParentID" + 2 > :n
	) t1
GROUP BY
	t1."ParentID",
	t1."ChildID"

