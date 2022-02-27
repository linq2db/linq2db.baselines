BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(Hour("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

