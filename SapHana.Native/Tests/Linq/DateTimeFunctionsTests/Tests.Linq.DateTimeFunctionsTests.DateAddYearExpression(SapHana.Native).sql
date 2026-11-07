-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 11

SELECT
	To_Date(Add_Years("t"."DateTimeValue", :"Value"))
FROM
	"LinqDataTypes" "t"

