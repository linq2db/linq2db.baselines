BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 22

SELECT
	Cast(Floor(Extract(hour from DateAdd(Hour, Cast(@p as Int), "t"."DateTimeValue"))) as int)
FROM
	"LinqDataTypes" "t"

