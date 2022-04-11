BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5

SELECT
	DateAdd(Minute, Cast(@p_1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

