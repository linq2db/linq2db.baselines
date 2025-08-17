BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

