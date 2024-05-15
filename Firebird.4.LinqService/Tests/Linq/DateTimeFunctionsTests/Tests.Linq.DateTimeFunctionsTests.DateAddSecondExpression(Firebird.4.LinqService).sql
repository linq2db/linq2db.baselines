BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, 41, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

