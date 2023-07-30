BeforeExecute
-- Firebird
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	DateAdd(Day, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

