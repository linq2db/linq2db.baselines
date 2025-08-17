BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT FIRST 1
			"ch"."ParentID"
		FROM
			"Child" "ch"
		WHERE
			"p"."ParentID" = "ch"."ParentID"
		ORDER BY
			"ch"."ChildID"
	),
	(
		SELECT FIRST 1
			"ch_1"."ChildID"
		FROM
			"Child" "ch_1"
		WHERE
			"p"."ParentID" = "ch_1"."ParentID"
		ORDER BY
			"ch_1"."ChildID"
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" >= 1
ORDER BY
	"p"."ParentID"

