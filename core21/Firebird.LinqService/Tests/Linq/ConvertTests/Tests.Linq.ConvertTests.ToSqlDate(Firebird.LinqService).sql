BeforeExecute
-- Firebird

SELECT 
	Cast((Cast(Cast(Floor(Extract(year from "t"."DateTimeValue")) as int) as VarChar(11)) || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

