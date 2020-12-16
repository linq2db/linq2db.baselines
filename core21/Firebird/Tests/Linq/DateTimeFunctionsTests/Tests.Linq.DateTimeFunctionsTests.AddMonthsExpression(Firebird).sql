BeforeExecute
-- Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -2

SELECT
	DateAdd(Month, Cast(@p_1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

