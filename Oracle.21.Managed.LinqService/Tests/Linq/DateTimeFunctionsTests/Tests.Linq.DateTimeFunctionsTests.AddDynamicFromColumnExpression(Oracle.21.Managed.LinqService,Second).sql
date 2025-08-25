BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	t."DateTimeValue" + ((CAST(t."SmallIntValue" AS Int) + :part1) - :part2) * INTERVAL '1' SECOND
FROM
	"LinqDataTypes" t

