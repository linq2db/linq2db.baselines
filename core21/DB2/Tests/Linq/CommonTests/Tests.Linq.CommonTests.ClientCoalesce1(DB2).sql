BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 100

SELECT 
	Coalesce("p"."Value1", @p1)
FROM
	"Parent" "p"

