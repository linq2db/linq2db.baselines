BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DateAdd(Year, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

