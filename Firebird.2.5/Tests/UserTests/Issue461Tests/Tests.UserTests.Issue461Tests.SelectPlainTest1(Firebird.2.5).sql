BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			"c_1"."ParentID" + 1
		FROM
			"Child" "c_1"
	)
FROM
	"Parent" "p"

