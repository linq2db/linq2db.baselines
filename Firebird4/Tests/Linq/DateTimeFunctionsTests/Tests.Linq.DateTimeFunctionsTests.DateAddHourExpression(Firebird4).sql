BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	Extract(hour from DateAdd(Hour, CAST(@p AS Int), "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

