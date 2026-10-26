-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	To_Date(Add_Months("t"."DateTimeValue", :"Value" * 3))
FROM
	"LinqDataTypes" "t"

