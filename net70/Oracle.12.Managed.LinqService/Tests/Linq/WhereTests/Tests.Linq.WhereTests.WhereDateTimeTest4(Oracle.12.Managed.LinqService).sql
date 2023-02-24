﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TIMESTAMP '2009-09-27 00:00:00.000000'

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
	t1."DateTimeValue" = :DateTimeValue

