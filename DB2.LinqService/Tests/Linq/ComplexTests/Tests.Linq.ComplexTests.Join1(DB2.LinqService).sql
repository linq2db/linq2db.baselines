BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID",
	"g_1"."ParentID",
	"g_1"."ChildID",
	"g_1"."GrandChildID"
FROM
	"Parent" "x"
		INNER JOIN "Child" "c_1" ON "x"."ParentID" = "c_1"."ParentID"
		INNER JOIN "GrandChild" "g_1" ON "x"."ParentID" = "g_1"."ParentID"
WHERE
	("c_1"."ParentID" = 2 OR "c_1"."ParentID" = 3) AND ("g_1"."ChildID" <> 21 OR "g_1"."ChildID" IS NULL) AND ("g_1"."ChildID" <> 33 OR "g_1"."ChildID" IS NULL) OR
	"g_1"."ParentID" = 3 AND "g_1"."ChildID" = 32 OR "g_1"."ChildID" = 11

