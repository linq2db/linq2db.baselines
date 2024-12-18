BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_GrandChildren"."ParentID",
	"a_GrandChildren"."ChildID",
	"a_GrandChildren"."GrandChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "a_Children" ON "p"."ParentID" = "a_Children"."ParentID"
		INNER JOIN "GrandChild" "a_GrandChildren" ON "a_Children"."ParentID" = "a_GrandChildren"."ParentID" AND "a_GrandChildren"."ParentID" IS NOT NULL AND "a_Children"."ChildID" = "a_GrandChildren"."ChildID" AND "a_GrandChildren"."ChildID" IS NOT NULL

