-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	Hour(Add_Seconds("t"."DateTimeValue", :"Value" * 3600))
FROM
	"LinqDataTypes" "t"

