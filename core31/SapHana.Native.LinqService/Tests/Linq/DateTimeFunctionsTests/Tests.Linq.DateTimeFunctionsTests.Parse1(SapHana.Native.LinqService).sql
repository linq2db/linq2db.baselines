BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	DayOfMonth("t"."DateTimeValue") > 0

