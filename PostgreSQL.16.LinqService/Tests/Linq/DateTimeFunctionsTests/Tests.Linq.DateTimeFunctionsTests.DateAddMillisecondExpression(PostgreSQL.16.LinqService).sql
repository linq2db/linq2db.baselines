﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."DateTimeValue" + 226 * Interval '1 Millisecond'
FROM
	"LinqDataTypes" t

