﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	t."DateTimeValue" + :p * Interval '1 Year'
FROM
	"LinqDataTypes" t

