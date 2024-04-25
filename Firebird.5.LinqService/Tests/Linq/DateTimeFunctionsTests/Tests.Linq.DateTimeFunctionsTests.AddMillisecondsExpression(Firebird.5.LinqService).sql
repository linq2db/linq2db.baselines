BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	DateAdd(Millisecond, CAST(@p AS Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

