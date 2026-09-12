-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = -1

SELECT
	TRUNC(CAST(Add_Months(t."DateTimeValue", :Value * 3) - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", :Value * 3)) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND'))
FROM
	"LinqDataTypes" t

