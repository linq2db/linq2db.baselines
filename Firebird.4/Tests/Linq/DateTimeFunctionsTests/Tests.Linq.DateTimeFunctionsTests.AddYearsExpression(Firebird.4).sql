BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	DateAdd(Year, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

