BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(Weekday("t"."DateTimeValue") + 1, 7)
FROM
	"LinqDataTypes" "t"

