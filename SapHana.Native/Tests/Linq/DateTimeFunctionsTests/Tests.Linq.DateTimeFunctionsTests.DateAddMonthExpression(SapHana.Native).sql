-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	To_Date(Add_Months("t"."DateTimeValue", :"Value"))
FROM
	"LinqDataTypes" "t"

