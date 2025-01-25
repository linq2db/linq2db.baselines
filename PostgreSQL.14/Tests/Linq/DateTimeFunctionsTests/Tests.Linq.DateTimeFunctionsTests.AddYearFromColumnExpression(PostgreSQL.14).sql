BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @part1 Smallint -- Int16
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT
	Date_Trunc('day', t."DateTimeValue" + ((t."SmallIntValue" + :part1) - :part2) * Interval '1 Year')
FROM
	"LinqDataTypes" t

