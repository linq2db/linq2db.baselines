﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	Cast(Floor(Extract(hour from (t."DateTimeValue" + :p_1 * Interval '1 Hour'))) as int)
FROM
	"LinqDataTypes" t

