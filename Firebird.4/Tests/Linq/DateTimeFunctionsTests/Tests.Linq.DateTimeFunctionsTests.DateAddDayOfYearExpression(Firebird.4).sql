BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	CAST(DateAdd(Day, @p, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

