-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Date_1 Int32
SET     @Date_1 = 1

SELECT
	TRUNC(CAST(Add_Months(t."DateTimeValue", :Date_1 * 12) - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", :Date_1 * 12)) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND'))
FROM
	"LinqDataTypes" t

