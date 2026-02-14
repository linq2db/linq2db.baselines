-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX((
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" "a_Children"
		WHERE
			t1."ParentID" = "a_Children"."ParentID"
	))
FROM
	"Parent" t1

