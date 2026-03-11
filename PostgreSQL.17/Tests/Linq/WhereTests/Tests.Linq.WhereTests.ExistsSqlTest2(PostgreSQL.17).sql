-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID"
	) AND
	p."ParentID" > 100

