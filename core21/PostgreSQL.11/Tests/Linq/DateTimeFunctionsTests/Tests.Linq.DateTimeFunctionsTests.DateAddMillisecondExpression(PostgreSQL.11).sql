﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Double
SET     @p_1 = 226

SELECT
	t."DateTimeValue" + :p_1 * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

