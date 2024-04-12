BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = -8

SELECT
	Extract(minute from DateAdd(Minute, CAST(@p AS Int), "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

