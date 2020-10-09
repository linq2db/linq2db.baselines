BeforeExecute
-- Firebird

SELECT 
	DateDiff(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

