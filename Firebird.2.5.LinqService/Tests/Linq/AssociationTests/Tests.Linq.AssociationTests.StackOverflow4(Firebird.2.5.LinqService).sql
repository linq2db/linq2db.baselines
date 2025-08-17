BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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

