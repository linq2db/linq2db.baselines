﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 11

SELECT
	t."DateTimeValue" + :p * Interval '1 Year'
FROM
	"LinqDataTypes" t

