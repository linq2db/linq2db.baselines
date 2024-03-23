BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			SUM("a_Children"."ParentID" * "a_Children"."ChildID")
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 2
	)
FROM
	"Parent" p

