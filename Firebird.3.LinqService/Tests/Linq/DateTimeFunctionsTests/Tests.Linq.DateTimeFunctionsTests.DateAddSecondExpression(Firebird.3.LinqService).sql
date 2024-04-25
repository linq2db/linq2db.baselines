BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, @p, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

