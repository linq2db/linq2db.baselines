BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT FIRST 1
			"t1"."ParentID"
		FROM
			"Child" "t1"
	),
	(
		SELECT FIRST 1
			"t2"."ChildID"
		FROM
			"Child" "t2"
	)
FROM
	"Parent" "p"

