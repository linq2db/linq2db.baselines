BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT DISTINCT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" p

