-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" "a_Children" ON p."ParentID" = "a_Children"."ParentID"

