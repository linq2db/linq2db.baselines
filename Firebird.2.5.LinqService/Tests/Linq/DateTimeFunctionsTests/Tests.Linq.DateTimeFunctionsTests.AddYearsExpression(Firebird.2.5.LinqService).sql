BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CAST(DateAdd(Year, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

