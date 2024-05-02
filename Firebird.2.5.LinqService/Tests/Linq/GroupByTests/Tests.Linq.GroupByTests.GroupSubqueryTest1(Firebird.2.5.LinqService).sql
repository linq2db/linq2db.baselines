BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"pmp1"."ChildID"
FROM
	(
		SELECT
			"g_1"."ParentID"
		FROM
			"Child" "g_1"
		GROUP BY
			"g_1"."ParentID"
	) "pmp"
		CROSS JOIN "Child" "pmp1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

