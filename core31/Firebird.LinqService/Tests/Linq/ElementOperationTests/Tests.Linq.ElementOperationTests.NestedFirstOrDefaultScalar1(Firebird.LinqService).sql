BeforeExecute
-- Firebird

SELECT
	(
		SELECT FIRST 1
			"p"."ChildID"
		FROM
			"Child" "p"
	)
FROM
	"Parent" "p_1"

