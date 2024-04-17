BeforeExecute
-- Firebird.4 Firebird4

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" "p1"
		WHERE
			"p1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"

