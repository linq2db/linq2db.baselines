BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT 
	t.DateTimeValue + ((t.SmallIntValue + :part1) - :part2) * INTERVAL '3' MONTH
FROM
	LinqDataTypes t

