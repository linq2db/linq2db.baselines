-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	(
		SELECT
			MAX("a_Children"."ParentID")
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" < 0
	)
FROM
	"Parent" p

