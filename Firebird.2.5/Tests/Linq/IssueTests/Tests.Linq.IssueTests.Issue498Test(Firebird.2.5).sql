BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"g_1"."ParentID",
	COUNT(*)
FROM
	"Child" "g_1"
		INNER JOIN "GrandChild" "y" ON "g_1"."ParentID" = "y"."ParentID" AND "y"."ParentID" IS NOT NULL AND "g_1"."ChildID" = "y"."ChildID" AND "y"."ChildID" IS NOT NULL
GROUP BY
	"g_1"."ParentID"

