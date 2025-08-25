BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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

