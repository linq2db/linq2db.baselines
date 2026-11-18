-- Firebird.3 Firebird3
SELECT
	"p"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "g_1"
		WHERE
			"g_1"."ParentID" = "p"."ParentID" AND "g_1"."ChildID" IS NOT NULL
	)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

