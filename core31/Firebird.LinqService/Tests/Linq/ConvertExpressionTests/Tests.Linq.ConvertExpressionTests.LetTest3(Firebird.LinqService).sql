BeforeExecute
-- Firebird

SELECT
	(
		SELECT FIRST 1
			"p"."ParentID"
		FROM
			"Child" "p"
	)
FROM
	"Parent" "p_1"

