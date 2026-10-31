-- SapHana.Native SapHana
DECLARE @Minute Integer -- Int32
SET     @Minute = -8

SELECT
	Minute(Add_Seconds("t"."DateTimeValue", :"Minute" * 60))
FROM
	"LinqDataTypes" "t"

