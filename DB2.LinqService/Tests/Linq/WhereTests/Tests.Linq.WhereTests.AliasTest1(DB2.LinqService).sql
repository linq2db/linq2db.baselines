BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @user Integer(4) -- Int32
SET     @user = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @user

