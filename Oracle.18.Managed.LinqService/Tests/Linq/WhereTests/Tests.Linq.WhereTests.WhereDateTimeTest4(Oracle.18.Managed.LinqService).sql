﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."DateTimeValue2",
	t1."BoolValue",
	t1."GuidValue",
	t1."SmallIntValue",
	t1."IntValue",
	t1."BigIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."DateTimeValue" = TIMESTAMP '2009-09-27 00:00:00.000000'

