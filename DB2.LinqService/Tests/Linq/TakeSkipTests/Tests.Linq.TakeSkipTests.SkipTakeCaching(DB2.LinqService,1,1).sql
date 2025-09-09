BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
ORDER BY
	"t1"."Value1"
OFFSET 1 ROWS FETCH NEXT @take ROWS ONLY 

