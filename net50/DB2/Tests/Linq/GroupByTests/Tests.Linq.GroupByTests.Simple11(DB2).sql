BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"selectParam"."ParentID" + 1,
	"selectParam"."ChildID"
FROM
	"GrandChild" "selectParam"
GROUP BY
	"selectParam"."ParentID" + 1,
	"selectParam"."ChildID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 11

SELECT
	"elemParam"."ChildID"
FROM
	"GrandChild" "elemParam"
WHERE
	"elemParam"."ParentID" + 1 = @ParentID AND "elemParam"."ChildID" = @ChildID

