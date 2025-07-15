BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "p1"
		WHERE
			"p1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"

