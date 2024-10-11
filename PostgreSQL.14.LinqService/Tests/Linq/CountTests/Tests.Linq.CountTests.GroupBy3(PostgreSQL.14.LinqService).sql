BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	MIN(t1."ChildID"),
	COUNT(CASE
		WHEN t1."ChildID" > 25 THEN 1
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
			g_1."ParentID" > 0
	) t1
GROUP BY
	t1."ParentID"

