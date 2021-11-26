﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
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
UNION ALL
SELECT
	Cast(NULL as Int),
	Cast(NULL as decimal(29, 10)),
	Cast(NULL as TimeStamp),
	Cast(NULL as TimeStamp),
	Cast(NULL as Boolean),
	Cast(NULL as uuid),
	Cast(NULL as SmallInt),
	Cast(NULL as Int),
	Cast(NULL as BigInt),
	Cast(NULL as text)
FROM
	"LinqDataTypes" d

