BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			"l"."ParentID" + 1
		FROM
			"Child" "l"
	)
FROM
	"Parent" "sep"

