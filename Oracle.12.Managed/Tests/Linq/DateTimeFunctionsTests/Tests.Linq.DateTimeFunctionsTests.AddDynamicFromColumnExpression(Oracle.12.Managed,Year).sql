﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @part1 Int32
SET     @part1 = 4
DECLARE @part2 Int32
SET     @part2 = 4

SELECT
	t."DateTimeValue" + ((t."SmallIntValue" + :part1) - :part2) * INTERVAL '1' YEAR
FROM
	"LinqDataTypes" t

