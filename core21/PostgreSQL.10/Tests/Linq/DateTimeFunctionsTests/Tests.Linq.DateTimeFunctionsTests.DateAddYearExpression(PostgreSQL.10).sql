﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 11

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Year'
FROM
	"LinqDataTypes" t

