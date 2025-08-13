BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

