BeforeExecute
-- Firebird3 Firebird

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "p"

