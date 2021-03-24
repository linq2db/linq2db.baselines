BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	t."DateTimeValue" + Cast(((t."SmallIntValue" + :part1) - :part2) as Float) * Interval '1 Month'
FROM
	"LinqDataTypes" t

