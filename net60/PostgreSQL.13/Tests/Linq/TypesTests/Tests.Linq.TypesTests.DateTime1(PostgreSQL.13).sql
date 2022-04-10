﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Date_1 Timestamp -- DateTime2
SET     @Date_1 = '2009-09-20'::date

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."DateTimeValue" as Date) > :Date_1

