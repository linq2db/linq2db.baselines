-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	Second(Add_Seconds("t"."DateTimeValue", :"Value"))
FROM
	"LinqDataTypes" "t"

