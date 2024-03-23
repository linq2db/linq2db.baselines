BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID"
	)

