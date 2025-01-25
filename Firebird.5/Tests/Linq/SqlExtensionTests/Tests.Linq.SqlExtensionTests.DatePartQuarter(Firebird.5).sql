BeforeExecute
-- Firebird.5 Firebird4

SELECT
	(Extract(Month from "t"."DateTimeValue") - 1) / 3 + 1
FROM
	"LinqDataTypes" "t"

