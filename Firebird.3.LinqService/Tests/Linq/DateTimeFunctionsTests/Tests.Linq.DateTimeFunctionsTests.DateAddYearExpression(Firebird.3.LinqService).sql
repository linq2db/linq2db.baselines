BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 11

SELECT
	CAST(DateAdd(Year, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

