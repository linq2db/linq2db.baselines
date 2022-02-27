BeforeExecute
-- SapHana.Native SapHana

SELECT
	MOD(Minute("t"."DateTimeValue"), 7)
FROM
	"LinqDataTypes" "t"

