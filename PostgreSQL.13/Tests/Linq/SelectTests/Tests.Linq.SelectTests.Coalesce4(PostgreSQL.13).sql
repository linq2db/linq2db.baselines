-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Coalesce((
		SELECT
			"a_Parent"."Value1"
		FROM
			"Child" ch
				LEFT JOIN "Parent" "a_Parent" ON ch."ParentID" = "a_Parent"."ParentID"
		WHERE
			ch."ChildID" = c_1."ChildID"
		LIMIT 1
	), c_1."ChildID")
FROM
	"Child" c_1

