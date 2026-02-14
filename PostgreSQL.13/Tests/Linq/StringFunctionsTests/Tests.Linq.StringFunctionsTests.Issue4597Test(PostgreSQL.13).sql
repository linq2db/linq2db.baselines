-- PostgreSQL.13 PostgreSQL

SELECT
	(
		SELECT
			STRING_AGG("a_Children"."ChildID"::text, ', ') as "ConcatStringsNullable"
		FROM
			"Child" "a_Children"
		WHERE
			s."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" s

