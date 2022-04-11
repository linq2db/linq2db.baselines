BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, Cast(@p_1 as Int), "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

