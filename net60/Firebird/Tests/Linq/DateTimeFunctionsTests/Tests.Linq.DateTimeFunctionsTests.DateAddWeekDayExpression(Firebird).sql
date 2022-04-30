BeforeExecute
-- Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	DateAdd(Day, Cast(@p_1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

