BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast((Cast(Cast(Floor(Extract(year from "t"."DateTimeValue")) as int) as VarChar(11) CHARACTER SET UNICODE_FSS) || '-01-01 00:00:00') as TimeStamp)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Cast(Floor(Extract(year from "t"."DateTimeValue")) as int) as VarChar(11) CHARACTER SET UNICODE_FSS) || '-01-01 00:00:00') as TimeStamp))) as int) > 0

