﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + -8 * Interval '1 Minute'
FROM
	"LinqDataTypes" t

