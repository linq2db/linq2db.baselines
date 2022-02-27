BeforeExecute
-- SapHana.Native SapHana

SELECT
	Add_Seconds("t"."DateTimeValue", "t"."SmallIntValue" * 3600)
FROM
	"LinqDataTypes" "t"

