BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"a_MiddleRuntime"."ParentID", 
	"a_MiddleRuntime"."ChildID", 
	"a_MiddleRuntime"."ParentID_1", 
	"a_MiddleRuntime"."ChildID_1", 
	"a_MiddleRuntime"."GrandChildID"
FROM
	"Parent" "t"
		LEFT JOIN ( 
			SELECT 
				"t1"."ParentID", 
				"t1"."ChildID", 
				"a_Bottom"."ParentID" as "ParentID_1", 
				"a_Bottom"."ChildID" as "ChildID_1", 
				"a_Bottom"."GrandChildID"
			FROM
				"Child" "t1"
					LEFT JOIN "GrandChild" "a_Bottom" ON "t1"."ChildID" = "a_Bottom"."ChildID"
		) "a_MiddleRuntime" ON "t"."ParentID" = "a_MiddleRuntime"."ParentID" AND "a_MiddleRuntime"."ChildID" > 1
WHERE
	"t"."ParentID" IN (1, 5)
ORDER BY
	"t"."ParentID"

