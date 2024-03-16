BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Max((
		SELECT
			Count(*)
		FROM
			"Child" t2
				LEFT JOIN "Parent" "a_Parent" ON t2."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = t1."ParentID"
	))
FROM
	"Parent" t1

