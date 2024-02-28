BeforeExecute
-- Firebird
DECLARE @p Integer -- Int32
SET     @p = -8

SELECT
	DateAdd(Minute, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

