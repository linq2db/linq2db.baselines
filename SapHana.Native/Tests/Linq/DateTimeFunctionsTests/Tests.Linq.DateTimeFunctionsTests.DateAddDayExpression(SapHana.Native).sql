-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	To_Date(Add_Days("t"."DateTimeValue", :"Value"))
FROM
	"LinqDataTypes" "t"

