BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 41

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, @p, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

