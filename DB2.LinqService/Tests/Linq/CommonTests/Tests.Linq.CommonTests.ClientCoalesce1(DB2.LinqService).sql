BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 100

SELECT
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	Coalesce("x"."Value1", CAST(@Value1 AS Int)) > 10

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Value1"
FROM
	"Parent" "p"

