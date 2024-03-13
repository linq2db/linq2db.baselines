BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @part1 Smallint -- Int16
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	Cast((t."DateTimeValue" + ((Cast(t."SmallIntValue" as Int) + :part1) - :part2) * Interval '1 Year') as Date)
FROM
	"LinqDataTypes" t

