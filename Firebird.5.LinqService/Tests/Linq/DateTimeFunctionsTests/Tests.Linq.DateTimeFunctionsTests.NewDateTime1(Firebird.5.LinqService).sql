BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CAST(LPad(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS TimeStamp)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(month from CAST(LPad(CAST(Extract(year from "t"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS TimeStamp)) = 10

