-- Firebird.5 Firebird4

SELECT
	"pmp1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"g_1"."ParentID"
		FROM
			"Child" "g_1"
	) "pmp"
		CROSS JOIN "Child" "pmp1"

-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

