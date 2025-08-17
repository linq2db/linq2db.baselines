BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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

