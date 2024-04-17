BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" "t1"
		WHERE
			"p"."ParentID" = "t1"."Value1"
	)
FROM
	"Parent" "p"

