-- Oracle.11.Managed Oracle11
SELECT
	TRUNC(CAST(Add_Months(t."DateTimeValue", 132) - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", 132)) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND'))
FROM
	"LinqDataTypes" t

