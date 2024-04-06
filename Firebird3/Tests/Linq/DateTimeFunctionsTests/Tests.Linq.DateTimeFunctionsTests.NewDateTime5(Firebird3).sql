BeforeExecute
-- Firebird3 Firebird

SELECT
	Extract(year from "t"."DateTimeValue") + 1
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(month from CAST(LPad(CAST(Extract(year from "t"."DateTimeValue") + 1 AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-10-01' AS TimeStamp)) = 10

