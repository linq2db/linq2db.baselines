﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."BoolValue" = False AND ((t."SmallIntValue" = 5 OR t."SmallIntValue" = 7) OR (t."SmallIntValue" | 2) = 10)

