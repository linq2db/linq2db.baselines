﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	Floor(Extract(second From (t."DateTimeValue" + :Value * Interval '1 Second')))::Int
FROM
	"LinqDataTypes" t

