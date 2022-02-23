BeforeExecute
-- Firebird

SELECT
	Cast((Cast(Cast(Floor(Extract(hour from "t"."DateTimeValue")) as int) as VarChar(11)) || ':01:01') as Time)
FROM
	"LinqDataTypes" "t"

