BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."ParentID", 
	"t1"."ChildID"
FROM
	"GrandChild" "t1"
GROUP BY
	"t1"."ParentID",
	"t1"."ChildID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 11

SELECT 
	"ch"."GrandChildID"
FROM
	"GrandChild" "ch"
WHERE
	("ch"."ParentID" = @ParentID AND "ch"."ChildID" = @ChildID)

