BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	DateAdd(Millisecond, CAST(@p AS Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

