﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Hour')::timestamp - t."DateTimeValue"::timestamp)) / 3600
FROM
	"LinqDataTypes" t

