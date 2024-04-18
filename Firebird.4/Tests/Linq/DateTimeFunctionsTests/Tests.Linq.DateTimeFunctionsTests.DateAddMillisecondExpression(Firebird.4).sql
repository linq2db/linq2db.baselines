BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	DateAdd(Millisecond, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

