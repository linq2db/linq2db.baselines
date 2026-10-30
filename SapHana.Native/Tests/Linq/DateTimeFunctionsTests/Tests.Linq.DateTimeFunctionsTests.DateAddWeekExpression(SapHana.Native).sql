-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	To_Date(Add_Days("t"."DateTimeValue", :"Value" * 7))
FROM
	"LinqDataTypes" "t"

