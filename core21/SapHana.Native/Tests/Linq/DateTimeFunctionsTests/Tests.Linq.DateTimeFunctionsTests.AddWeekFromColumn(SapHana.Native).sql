BeforeExecute
-- SapHana.Native SapHana

SELECT
	Add_Days("t"."DateTimeValue", "t"."SmallIntValue" * 7)
FROM
	"LinqDataTypes" "t"

