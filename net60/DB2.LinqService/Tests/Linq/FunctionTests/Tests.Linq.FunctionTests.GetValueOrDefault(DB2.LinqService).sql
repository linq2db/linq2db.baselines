BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @default Integer(4) -- Int32
SET     @default = 0

SELECT
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	Coalesce("p"."Value1", @default) > 0

