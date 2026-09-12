-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Date_1 Int32
SET     @Date_1 = -2

SELECT
	TRUNC(CAST(Add_Months(t."DateTimeValue", :Date_1) - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", :Date_1)) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND'))
FROM
	"LinqDataTypes" t

