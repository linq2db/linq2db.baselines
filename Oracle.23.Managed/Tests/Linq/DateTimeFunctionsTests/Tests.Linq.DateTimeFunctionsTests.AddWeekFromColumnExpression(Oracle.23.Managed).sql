BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @part1 Int16
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	Trunc(t."DateTimeValue" + ((Cast(t."SmallIntValue" as Int) + :part1) - :part2) * INTERVAL '7' DAY, 'DD')
FROM
	"LinqDataTypes" t

