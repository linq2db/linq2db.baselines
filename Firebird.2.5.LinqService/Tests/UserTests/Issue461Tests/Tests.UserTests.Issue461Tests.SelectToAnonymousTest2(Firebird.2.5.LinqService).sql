BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT FIRST 1
			"l"."ParentID" + 1
		FROM
			"Child" "l"
	),
	(
		SELECT FIRST 1
			"l_1"."ParentID"
		FROM
			"Child" "l_1"
	)
FROM
	"Parent" "sep"

