-- PostgreSQL.19 PostgreSQL12

SELECT
	(
		SELECT
			STRING_AGG("a_Children"."ChildID"::text, ', ')
		FROM
			"Child" "a_Children"
		WHERE
			s."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" s

