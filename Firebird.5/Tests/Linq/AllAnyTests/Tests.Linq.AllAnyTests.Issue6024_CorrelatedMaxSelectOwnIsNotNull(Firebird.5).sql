-- Firebird.5 Firebird4
SELECT
	"p"."ParentID",
	(
		SELECT
			MAX(CASE
				WHEN "g_1"."ChildID" IS NOT NULL THEN "g_1"."GrandChildID"
				ELSE 0
			END)
		FROM
			"GrandChild" "g_1"
		WHERE
			"g_1"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.5 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

