BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	CAST(DateAdd(Day, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

