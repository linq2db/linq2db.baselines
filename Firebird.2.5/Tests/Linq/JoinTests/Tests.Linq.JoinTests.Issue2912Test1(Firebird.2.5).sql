-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			"a_Children"."ChildID"
		FROM
			"Child" "a_Children"
		WHERE
			"employee"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "employee"

