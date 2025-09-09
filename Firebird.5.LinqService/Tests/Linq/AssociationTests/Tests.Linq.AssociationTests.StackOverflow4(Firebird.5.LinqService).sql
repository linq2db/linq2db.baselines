BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."Value1"
	)
FROM
	"Parent" "p"

