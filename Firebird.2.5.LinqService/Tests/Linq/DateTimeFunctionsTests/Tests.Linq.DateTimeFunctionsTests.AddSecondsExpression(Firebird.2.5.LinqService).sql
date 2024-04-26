BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = -35

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, @p, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

