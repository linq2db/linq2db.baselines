﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 5

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

