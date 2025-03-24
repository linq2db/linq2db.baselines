BeforeExecute
--  Firebird.5 Firebird4

SELECT
	CAST(CAST(Extract(year from "p"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-01-01 00:00:00' AS TimeStamp)
FROM
	"LinqDataTypes" "p"
WHERE
	Extract(day from CAST(CAST(Extract(year from "p"."DateTimeValue") AS VarChar(6) CHARACTER SET UNICODE_FSS) || '-01-01 00:00:00' AS TimeStamp)) > 0

