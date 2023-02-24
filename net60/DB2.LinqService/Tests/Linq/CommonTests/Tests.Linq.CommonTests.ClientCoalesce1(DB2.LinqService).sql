BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 100

SELECT
	Coalesce("p"."Value1", @Value1)
FROM
	"Parent" "p"

