BeforeExecute
-- Firebird

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	),
	(
		SELECT
			Count(*)
		FROM
			"Child" "t2"
		WHERE
			"p"."ParentID" = "t2"."ParentID"
	)
FROM
	"Parent" "p"

