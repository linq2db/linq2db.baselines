-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
		LEFT JOIN "Child" ch ON t1."ParentID" = ch."ParentID"
WHERE
	ch."ParentID" IS NULL

