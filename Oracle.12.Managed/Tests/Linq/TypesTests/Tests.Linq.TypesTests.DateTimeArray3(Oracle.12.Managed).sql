﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
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
	t."DateTimeValue" IN (TIMESTAMP '2001-01-11 01:11:21.100000')

