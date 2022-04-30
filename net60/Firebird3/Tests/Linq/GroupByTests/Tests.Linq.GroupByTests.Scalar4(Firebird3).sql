BeforeExecute
-- Firebird3 Firebird

SELECT
	(
		SELECT
			Min("keyParam"."ChildID")
		FROM
			"Child" "keyParam"
		WHERE
			"g_1"."ParentID" = "keyParam"."ParentID" AND "keyParam"."ParentID" > 2
	)
FROM
	(
		SELECT
			(
				SELECT
					Min("ch"."ChildID")
				FROM
					"Child" "ch"
				WHERE
					"t1"."ParentID" = "ch"."ParentID" AND "ch"."ParentID" > 2
			) as "ex",
			"t1"."ParentID"
		FROM
			"Child" "t1"
		GROUP BY
			"t1"."ParentID"
	) "g_1"
WHERE
	"g_1"."ex" IS NOT NULL

