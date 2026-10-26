-- SapHana.Native SapHana
SELECT
	"p"."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "g_1"
			WHERE
				"g_1"."ChildID" IS NOT NULL AND "g_1"."ParentID" = "p"."ParentID"
		)
			THEN 1
		ELSE 0
	END
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

