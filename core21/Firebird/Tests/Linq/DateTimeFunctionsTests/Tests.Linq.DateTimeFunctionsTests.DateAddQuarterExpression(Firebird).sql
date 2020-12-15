BeforeExecute
-- Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -1

SELECT
	DateAdd(Month, Cast(@p_1 as Int) * 3, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

