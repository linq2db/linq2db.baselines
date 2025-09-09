BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	DateAdd(Minute, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

