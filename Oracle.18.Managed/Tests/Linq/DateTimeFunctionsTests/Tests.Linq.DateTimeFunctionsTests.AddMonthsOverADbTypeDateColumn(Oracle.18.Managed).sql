-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(Add_Months(r."Value", 1) - GreatEst(EXTRACT(DAY FROM Add_Months(r."Value", 1)) - EXTRACT(DAY FROM r."Value"), 0) AS date) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(r."Value" AS timestamp(7))), 1), 'SECOND') as "c1"
FROM
	"DbTypeDateRow" r
FETCH NEXT 2 ROWS ONLY

