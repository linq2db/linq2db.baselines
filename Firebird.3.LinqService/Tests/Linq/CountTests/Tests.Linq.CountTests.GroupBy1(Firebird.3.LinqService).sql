BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "ch"
		WHERE
			"t1"."ParentID" = "ch"."ParentID" AND "ch"."ChildID" > 20
	)
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

