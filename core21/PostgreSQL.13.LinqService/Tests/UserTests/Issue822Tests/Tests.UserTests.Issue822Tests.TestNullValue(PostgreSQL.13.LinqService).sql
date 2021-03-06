﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 3

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
	EXISTS(
		SELECT
			*
		FROM
			"LinqDataTypes" t2
		WHERE
			t2."ID" = :id_1 AND t2."ID" = t1."ID"
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 4

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
	EXISTS(
		SELECT
			*
		FROM
			"LinqDataTypes" t2
		WHERE
			t2."ID" = :id_1 AND t2."ID" = t1."ID"
	)

