-- Firebird.5 Firebird4

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

