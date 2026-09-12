-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 2

SELECT
	TRUNC(CAST(Add_Months(t."DateTimeValue", :Value) - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", :Value)) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND'))
FROM
	"LinqDataTypes" t

