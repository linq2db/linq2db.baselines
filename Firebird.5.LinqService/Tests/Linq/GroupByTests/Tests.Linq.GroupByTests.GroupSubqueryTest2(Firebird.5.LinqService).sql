BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"pmp1"."ChildID"
FROM
	"Child" "pmp1"
		CROSS JOIN (
			SELECT
				"pmp"."ParentID"
			FROM
				"Child" "pmp"
			GROUP BY
				"pmp"."ParentID"
		) "pmp_1"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

