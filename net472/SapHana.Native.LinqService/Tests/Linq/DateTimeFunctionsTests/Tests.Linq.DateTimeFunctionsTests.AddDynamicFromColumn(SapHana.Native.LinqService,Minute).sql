BeforeExecute
-- SapHana.Native SapHana

SELECT
	Add_Seconds("t"."DateTimeValue", "t"."SmallIntValue" * 60)
FROM
	"LinqDataTypes" "t"

