﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 22

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Hour'
FROM
	"LinqDataTypes" t

