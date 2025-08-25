BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

