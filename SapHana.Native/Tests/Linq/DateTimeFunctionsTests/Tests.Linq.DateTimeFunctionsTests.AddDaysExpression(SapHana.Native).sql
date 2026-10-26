-- SapHana.Native SapHana
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	To_Date(Add_Days("t"."DateTimeValue", :"Date"))
FROM
	"LinqDataTypes" "t"

