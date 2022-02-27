﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
	t."BoolValue" = False AND t."MoneyValue" > 1 AND ((t."SmallIntValue" = 5::smallint OR t."SmallIntValue" = 7::smallint) OR t."SmallIntValue" = 8::smallint)

