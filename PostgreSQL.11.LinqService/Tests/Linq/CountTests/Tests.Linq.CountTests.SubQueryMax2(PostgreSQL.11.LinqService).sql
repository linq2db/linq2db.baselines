BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Max((
		SELECT
			Count(*)
		FROM
			"Child" "a_Children"
		WHERE
			t1."ParentID" = "a_Children"."ParentID"
	))
FROM
	"Parent" t1

