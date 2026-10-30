-- SapHana.Native SapHana
SELECT
	"p"."ParentID",
	(
		SELECT
			COUNT(DISTINCT "g_1"."ChildID")
		FROM
			"GrandChild" "g_1"
		WHERE
			"g_1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

