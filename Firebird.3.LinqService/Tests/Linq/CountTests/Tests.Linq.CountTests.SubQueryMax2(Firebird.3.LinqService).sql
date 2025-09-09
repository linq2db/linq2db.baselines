BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

