-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	TRUNC(CAST(Add_Months(t."DateTimeValue", ((CAST(t."SmallIntValue" AS Int) + :part1) - :part2) * 3) - GreatEst(EXTRACT(DAY FROM Add_Months(t."DateTimeValue", ((CAST(t."SmallIntValue" AS Int) + :part1) - :part2) * 3)) - EXTRACT(DAY FROM t."DateTimeValue"), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(t."DateTimeValue" AS timestamp)), 1), 'SECOND'))
FROM
	"LinqDataTypes" t

