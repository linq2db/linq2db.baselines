BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	ch."ParentID",
	p."ParentID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON ch."ParentID" = p."ParentID"
WHERE
	ch."ParentID" + p."ParentID" > 2

