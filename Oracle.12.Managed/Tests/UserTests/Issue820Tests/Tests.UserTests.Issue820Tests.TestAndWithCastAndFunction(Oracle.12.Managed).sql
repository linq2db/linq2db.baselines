﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @param Int16
SET     @param = 1

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
	(:param = t1."SmallIntValue" OR :param IS NULL AND t1."SmallIntValue" IS NULL)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
	1 = 0

