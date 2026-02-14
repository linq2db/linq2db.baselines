-- PostgreSQL.13 PostgreSQL

SELECT
	MAX((
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" c_1
				LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = t1."ParentID"
	))
FROM
	"Parent" t1

