-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(Add_Months(t."DateTimeValue", t."SmallIntValue") - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", t."SmallIntValue")) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND')
FROM
	"LinqDataTypes" t

