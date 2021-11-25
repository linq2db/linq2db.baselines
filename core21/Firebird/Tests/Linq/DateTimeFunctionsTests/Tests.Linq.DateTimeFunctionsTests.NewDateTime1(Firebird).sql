BeforeExecute
-- Firebird

SELECT
	Cast((Cast(Cast(Floor(Extract(year from "p"."DateTimeValue")) as int) as VarChar(11)) || '-10-1') as Date)
FROM
	"LinqDataTypes" "p"
WHERE
	Cast(Floor(Extract(month from Cast((Cast(Cast(Floor(Extract(year from "p"."DateTimeValue")) as int) as VarChar(11)) || '-10-1') as Date))) as int) = 10

