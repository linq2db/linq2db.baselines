BeforeExecute
-- Firebird3 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CAST(DateAdd(Day, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

