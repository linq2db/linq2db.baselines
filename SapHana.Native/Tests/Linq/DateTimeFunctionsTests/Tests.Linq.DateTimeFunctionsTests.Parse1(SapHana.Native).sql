-- SapHana.Native SapHana
SELECT
	To_Date("d"."DateTimeValue")
FROM
	"LinqDataTypes" "d"
WHERE
	DayOfMonth("d"."DateTimeValue") > 0

