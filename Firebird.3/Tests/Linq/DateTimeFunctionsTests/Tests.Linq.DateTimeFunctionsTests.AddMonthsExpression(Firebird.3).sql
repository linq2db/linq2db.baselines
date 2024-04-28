BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = -2

SELECT
	CAST(DateAdd(Month, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

