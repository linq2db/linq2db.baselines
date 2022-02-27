BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @$VB$Local_id Integer(4) -- Int32
SET     @$VB$Local_id = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @$VB$Local_id

