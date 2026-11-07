-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

