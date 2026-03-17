-- Firebird.2.5 Firebird

SELECT
	"pmp1"."ChildID"
FROM
	"Child" "pmp1"
		CROSS JOIN (
			SELECT DISTINCT
				"pmp"."ParentID"
			FROM
				"Child" "pmp"
		) "pmp_1"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

