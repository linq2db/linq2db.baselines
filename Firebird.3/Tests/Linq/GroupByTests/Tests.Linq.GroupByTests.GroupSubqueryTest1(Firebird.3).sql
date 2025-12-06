-- Firebird.3 Firebird3

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

-- Firebird.3 Firebird3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

