BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Local_SelectedValue Integer(4) -- Int32
SET     @Local_SelectedValue = 1

SELECT
	"w"."ParentID",
	"w"."ChildID",
	"w"."GrandChildID"
FROM
	"GrandChild" "w"
WHERE
	"w"."ChildID" IS NOT NULL AND "w"."ChildID" = @Local_SelectedValue

