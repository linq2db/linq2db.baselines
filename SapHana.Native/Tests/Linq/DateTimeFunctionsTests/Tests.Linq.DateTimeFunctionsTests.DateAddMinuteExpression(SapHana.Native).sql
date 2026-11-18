-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", :"Value" * 60))
FROM
	"LinqDataTypes" "t"

