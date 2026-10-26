-- SapHana.Native SapHana
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	Second(Add_Seconds("t"."DateTimeValue", :"Second"))
FROM
	"LinqDataTypes" "t"

