﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t."DateTimeValue" + -2 * Interval '1 Month'
FROM
	"LinqDataTypes" t

