BeforeExecute
-- Firebird

SELECT
	"t1"."ParentID",
	Min("t1"."ChildID"),
	(
		SELECT
			Count(*)
		FROM
			"Child" "ch"
		WHERE
			"t1"."ParentID" = "ch"."ParentID" + 1 AND "ch"."ChildID" > 25 AND
			"ch"."ParentID" > 0
	)
FROM
	(
		SELECT
			"ch_1"."ParentID" + 1 as "ParentID",
			"ch_1"."ChildID"
		FROM
			"Child" "ch_1"
		WHERE
			"ch_1"."ParentID" > 0
	) "t1"
GROUP BY
	"t1"."ParentID"

