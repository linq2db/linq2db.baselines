BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	DateAdd(Month, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

