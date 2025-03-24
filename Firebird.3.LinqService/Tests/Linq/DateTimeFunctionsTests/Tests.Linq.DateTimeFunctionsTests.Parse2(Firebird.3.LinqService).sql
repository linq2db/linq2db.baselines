BeforeExecute
--  Firebird.3 Firebird3

SELECT
	CAST(CAST(Extract(year from "d"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-02-24 00:00:00' AS TimeStamp)
FROM
	"LinqDataTypes" "d"
WHERE
	Extract(day from CAST(CAST(Extract(year from "d"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-02-24 00:00:00' AS TimeStamp)) > 0

