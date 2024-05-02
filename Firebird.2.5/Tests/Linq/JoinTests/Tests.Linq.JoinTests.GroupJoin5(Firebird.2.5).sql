BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			"ch"."ParentID"
		FROM
			"Child" "ch"
		WHERE
			"t1"."ParentID" = "ch"."ParentID"
		ORDER BY
			"ch"."ChildID"
	),
	(
		SELECT FIRST 1
			"ch_1"."ChildID"
		FROM
			"Child" "ch_1"
		WHERE
			"t1"."ParentID" = "ch_1"."ParentID"
		ORDER BY
			"ch_1"."ChildID"
	)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" >= 1
ORDER BY
	"t1"."ParentID"

