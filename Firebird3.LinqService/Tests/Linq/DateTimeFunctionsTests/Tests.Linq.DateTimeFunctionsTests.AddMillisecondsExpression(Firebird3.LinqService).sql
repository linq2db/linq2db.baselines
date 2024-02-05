BeforeExecute
-- Firebird3 Firebird
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	DateAdd(Millisecond, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

