﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @param2_1 Boolean
SET     @param2_1 = False

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
	t."BoolValue" = :param2_1

