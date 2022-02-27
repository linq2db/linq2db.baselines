BeforeExecute
-- SapHana.Native SapHana

SELECT
	Nano100_Between("t"."DateTimeValue", Add_Seconds("t"."DateTimeValue", 1)) / 10000
FROM
	"LinqDataTypes" "t"

