BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 2

SELECT 
	DateAdd(Month, Cast(@p1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

