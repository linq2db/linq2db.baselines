-- SapHana.Native SapHana
DECLARE @Date Integer -- Int32
SET     @Date = -2

SELECT
	To_Date(Add_Months("t"."DateTimeValue", :"Date"))
FROM
	"LinqDataTypes" "t"

