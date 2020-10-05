BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ID",
	Count(*),
	Sum(Nano100_Between("t1"."DateTimeValue", "t1"."DateTimeValue") / 10000),
	Max(Nano100_Between("t1"."DateTimeValue", "t1"."DateTimeValue") / 10000)
FROM
	"LinqDataTypes" "t1"
GROUP BY
	"t1"."ID"

