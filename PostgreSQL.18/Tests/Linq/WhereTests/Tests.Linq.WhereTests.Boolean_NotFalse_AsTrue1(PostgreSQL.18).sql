﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	r."ID",
	r."MoneyValue",
	r."DateTimeValue",
	r."BoolValue",
	r."GuidValue",
	r."BinaryValue",
	r."SmallIntValue",
	r."StringValue"
FROM
	"LinqDataTypes" r
WHERE
	r."BoolValue" = True

