BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			t1."ParentID" = "a_Children"."ParentID"
	))
FROM
	"Parent" t1

