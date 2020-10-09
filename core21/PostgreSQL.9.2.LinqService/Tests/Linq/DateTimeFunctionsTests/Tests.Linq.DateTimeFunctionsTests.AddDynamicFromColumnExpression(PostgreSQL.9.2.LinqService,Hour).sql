﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @part1 Integer -- Int32
SET     @part1 = 4
DECLARE @part2 Integer -- Int32
SET     @part2 = 4

SELECT 
	t."DateTimeValue" + ((t."SmallIntValue" + :part1) - :part2) * Interval '1 Hour'
FROM
	"LinqDataTypes" t

