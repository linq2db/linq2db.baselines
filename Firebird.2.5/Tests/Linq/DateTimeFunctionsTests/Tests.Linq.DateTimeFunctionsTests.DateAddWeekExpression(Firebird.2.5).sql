BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	DateAdd(Day, Cast(@p as Int) * 7, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

