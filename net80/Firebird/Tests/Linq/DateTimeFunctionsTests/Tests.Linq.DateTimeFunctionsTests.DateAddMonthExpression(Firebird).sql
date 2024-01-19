BeforeExecute
-- Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	DateAdd(Month, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

