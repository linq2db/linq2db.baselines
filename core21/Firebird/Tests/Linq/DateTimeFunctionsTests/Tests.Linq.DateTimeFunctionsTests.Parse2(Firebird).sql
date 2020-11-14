BeforeExecute
-- Firebird

SELECT
	Cast((Cast(Cast(Floor(Extract(year from "d"."DateTimeValue")) as int) as VarChar(11)) || '-02-24 00:00:00') as TimeStamp)
FROM
	"LinqDataTypes" "d"
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Cast(Floor(Extract(year from "d"."DateTimeValue")) as int) as VarChar(11)) || '-02-24 00:00:00') as TimeStamp))) as int) > 0

