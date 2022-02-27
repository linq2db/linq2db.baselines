BeforeExecute
-- SapHana.Native SapHana

SELECT
	Cast((Cast(Hour("t"."DateTimeValue") as VarChar(11)) || ':01:01') as Time)
FROM
	"LinqDataTypes" "t"

