BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = -1

SELECT
	DateAdd(Day, Cast(@p1 as Int) * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

