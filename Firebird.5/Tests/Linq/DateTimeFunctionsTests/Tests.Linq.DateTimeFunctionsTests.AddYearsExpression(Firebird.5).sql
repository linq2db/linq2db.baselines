BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CAST(DateAdd(Year, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

