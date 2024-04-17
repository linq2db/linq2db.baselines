BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	DateAdd(Month, Cast(@p as Int) * 3, "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

