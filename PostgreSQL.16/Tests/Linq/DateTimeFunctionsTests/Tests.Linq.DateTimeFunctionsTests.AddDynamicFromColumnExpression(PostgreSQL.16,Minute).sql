BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @part1 Smallint -- Int16
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	t."DateTimeValue" + ((t."SmallIntValue" + :part1) - :part2) * Interval '1 Minute'
FROM
	"LinqDataTypes" t

