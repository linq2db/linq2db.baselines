BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ParentID_1 Integer(4) -- Int32
SET     @ParentID_1 = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = @ParentID_1
ORDER BY
	"x"."ParentID" DESC
FETCH FIRST 1 ROWS ONLY

