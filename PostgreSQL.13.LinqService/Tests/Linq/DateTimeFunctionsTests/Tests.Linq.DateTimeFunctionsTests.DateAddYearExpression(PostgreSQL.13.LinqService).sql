﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 11

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Value * Interval '1 Year')
FROM
	"LinqDataTypes" t

