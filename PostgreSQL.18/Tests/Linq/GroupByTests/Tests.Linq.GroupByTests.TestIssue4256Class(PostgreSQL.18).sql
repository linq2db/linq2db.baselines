﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	it_1."IsActive",
	it_1."Other"
FROM
	(
		SELECT
			True as "IsActive",
			it."SmallIntValue" <> 0 as "Other"
		FROM
			"LinqDataTypes" it
	) it_1
GROUP BY
	it_1."IsActive",
	it_1."Other"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ID",
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

