-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t"
WHERE
	CAST(Nano100_Between("t"."DateTimeValue", Add_Days("t"."DateTimeValue", 30)) / 10000 AS BigInt) > 1000

