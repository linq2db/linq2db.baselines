BeforeExecute
-- Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 226

SELECT
	DateAdd(Millisecond, Cast(@p_1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

