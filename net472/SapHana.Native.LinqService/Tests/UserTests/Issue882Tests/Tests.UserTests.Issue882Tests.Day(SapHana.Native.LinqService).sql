BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(DayOfMonth("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

