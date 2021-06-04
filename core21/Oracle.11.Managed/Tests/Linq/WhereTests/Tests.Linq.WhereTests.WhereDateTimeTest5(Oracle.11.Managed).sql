﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = TIMESTAMP '2009-09-20 00:00:00.000000'

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
	Trunc(t1."DateTimeValue", 'DD') = :Date_1

