BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = -7

SELECT
	DateAdd(Day, Cast(@p1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

