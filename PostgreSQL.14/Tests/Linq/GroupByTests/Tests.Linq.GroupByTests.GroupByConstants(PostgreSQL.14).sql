BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "ChildId",
			2 as "ParentId"
		FROM
			"Child" g_1
	) t1
GROUP BY
	t1."ChildId",
	t1."ParentId"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

