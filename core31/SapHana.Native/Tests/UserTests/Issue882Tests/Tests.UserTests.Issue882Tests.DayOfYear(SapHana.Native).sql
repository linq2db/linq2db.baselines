BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(DayOfYear("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

