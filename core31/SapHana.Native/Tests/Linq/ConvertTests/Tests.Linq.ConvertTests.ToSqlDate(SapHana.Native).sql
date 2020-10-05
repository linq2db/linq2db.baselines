BeforeExecute
-- SapHana.Native SapHana

SELECT
	Cast((Cast(Year("t"."DateTimeValue") as VarChar(11)) || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

