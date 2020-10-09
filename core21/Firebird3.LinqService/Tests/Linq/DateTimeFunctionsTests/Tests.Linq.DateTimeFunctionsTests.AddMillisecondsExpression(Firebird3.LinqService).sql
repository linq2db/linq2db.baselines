BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 226

SELECT 
	DateAdd(Millisecond, Cast(@p1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

