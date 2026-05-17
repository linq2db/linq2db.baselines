-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			LIST("a_Children"."ChildID", ', ')
		FROM
			"Child" "a_Children"
		WHERE
			"s"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "s"

