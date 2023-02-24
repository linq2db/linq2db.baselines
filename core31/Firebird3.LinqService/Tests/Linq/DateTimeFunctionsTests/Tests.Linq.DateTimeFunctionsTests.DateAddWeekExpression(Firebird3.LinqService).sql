BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -1

SELECT
	DateAdd(Day, Cast(@p_1 as Int) * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

