﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	Date_Trunc('day', t."DateTimeValue" + :Date * Interval '1 Day')
FROM
	"LinqDataTypes" t

