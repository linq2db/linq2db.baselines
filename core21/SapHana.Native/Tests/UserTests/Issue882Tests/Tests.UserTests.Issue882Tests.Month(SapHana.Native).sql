BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(Month("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

