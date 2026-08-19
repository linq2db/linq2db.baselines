-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" "a_Children" ON p."ParentID" = "a_Children"."ParentID"

