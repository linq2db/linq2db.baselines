﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @dateTime Timestamp -- DateTime2
SET     @dateTime = '1992-01-11 01:11:21.100'::timestamp

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime AND t."DateTimeValue" IS NOT NULL
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @dateTime Timestamp -- DateTime2
SET     @dateTime = '1993-01-11 01:11:21.100'::timestamp

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	t."DateTimeValue" > :dateTime AND t."DateTimeValue" IS NOT NULL
LIMIT 1

