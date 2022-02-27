BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = -8

SELECT
	DateAdd(Minute, Cast(@p1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

