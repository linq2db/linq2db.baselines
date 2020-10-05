BeforeExecute
-- SapHana.Native SapHana

SELECT
	Add_Months("t"."DateTimeValue", "t"."SmallIntValue" * 3)
FROM
	"LinqDataTypes" "t"

