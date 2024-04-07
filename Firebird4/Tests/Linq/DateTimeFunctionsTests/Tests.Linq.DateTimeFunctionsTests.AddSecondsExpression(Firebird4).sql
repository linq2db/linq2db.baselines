BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	DateAdd(Second, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

