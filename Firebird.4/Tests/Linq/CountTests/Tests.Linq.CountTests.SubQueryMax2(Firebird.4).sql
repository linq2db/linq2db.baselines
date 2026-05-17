-- Firebird.4 Firebird4

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t1"."ParentID" = "a_Children"."ParentID"
	))
FROM
	"Parent" "t1"

