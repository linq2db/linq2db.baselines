﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 41

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Second'
FROM
	"LinqDataTypes" t

