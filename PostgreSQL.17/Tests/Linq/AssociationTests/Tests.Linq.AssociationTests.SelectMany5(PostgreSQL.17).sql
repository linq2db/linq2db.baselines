-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" "a_Children" ON p."ParentID" = "a_Children"."ParentID"

