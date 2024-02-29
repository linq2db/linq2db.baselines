BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	DateAdd(Minute, Cast(@p as Int), "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

