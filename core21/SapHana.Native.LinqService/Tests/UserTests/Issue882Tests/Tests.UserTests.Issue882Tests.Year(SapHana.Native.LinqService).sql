BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(Year("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

