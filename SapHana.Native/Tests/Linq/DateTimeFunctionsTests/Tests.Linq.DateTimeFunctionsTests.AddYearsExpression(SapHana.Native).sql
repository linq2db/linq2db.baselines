-- SapHana.Native SapHana
DECLARE @Date Integer -- Int32
SET     @Date = 1

SELECT
	To_Date(Add_Years("t"."DateTimeValue", :"Date"))
FROM
	"LinqDataTypes" "t"

