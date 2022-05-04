BeforeExecute
-- Firebird4 Firebird

SELECT
	(
		SELECT FIRST 1 DISTINCT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID"
	)
FROM
	"Parent" "p"

