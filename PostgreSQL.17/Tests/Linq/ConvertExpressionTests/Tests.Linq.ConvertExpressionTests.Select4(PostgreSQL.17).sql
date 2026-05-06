-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	Coalesce((
		SELECT
			SUM("a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			t."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 1 AND
			"a_Children"."ParentID" < 10
	), 0)
FROM
	"Parent" t

