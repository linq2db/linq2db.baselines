BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(LPad(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS Date)
FROM
	"LinqDataTypes" "t"

