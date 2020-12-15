﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = TO_TIMESTAMP('2009-09-27 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."DateTimeValue" = :DateTimeValue

