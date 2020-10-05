BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(Second("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

