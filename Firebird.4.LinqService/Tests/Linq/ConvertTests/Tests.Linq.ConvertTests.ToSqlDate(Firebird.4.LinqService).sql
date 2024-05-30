BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

