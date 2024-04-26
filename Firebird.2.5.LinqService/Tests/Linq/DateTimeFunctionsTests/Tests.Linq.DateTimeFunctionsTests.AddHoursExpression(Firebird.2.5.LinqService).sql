BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 22

SELECT
	Extract(hour from DateAdd(Hour, CAST(@p AS Int), "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

