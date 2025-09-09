BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"

