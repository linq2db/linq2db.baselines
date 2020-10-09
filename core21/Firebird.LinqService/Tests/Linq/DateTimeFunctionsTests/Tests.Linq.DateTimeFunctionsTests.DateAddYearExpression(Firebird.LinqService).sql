BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 11

SELECT 
	DateAdd(Year, Cast(@p1 as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

