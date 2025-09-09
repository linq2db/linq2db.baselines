BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(LPad(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS TimeStamp)
FROM
	"LinqDataTypes" "t"

