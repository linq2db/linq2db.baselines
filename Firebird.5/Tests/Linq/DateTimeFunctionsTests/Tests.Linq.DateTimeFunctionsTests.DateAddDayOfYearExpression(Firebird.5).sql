BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 3

SELECT
	DateAdd(Day, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

