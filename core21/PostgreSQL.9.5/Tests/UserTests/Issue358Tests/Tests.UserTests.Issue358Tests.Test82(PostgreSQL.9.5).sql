﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
WHERE
	(CASE
		WHEN t1."BigIntValue" IN (2)
			THEN True
		ELSE False
	END = True AND CASE
		WHEN t1."BigIntValue" IN (2)
			THEN True
		ELSE False
	END IS NOT NULL)

