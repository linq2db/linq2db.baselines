-- PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1
LIMIT 1

-- PostgreSQL.13 PostgreSQL
DECLARE @dt Timestamp -- DateTime2
SET     @dt = '2010-12-14 05:00:07.425'::timestamp

UPDATE
	"LinqDataTypes"
SET
	"DateTimeValue" = :dt
WHERE
	"LinqDataTypes"."ID" = 1

-- PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1
LIMIT 1

-- PostgreSQL.13 PostgreSQL
DECLARE @pdt Timestamp -- DateTime2
SET     @pdt = '2001-01-11 01:11:21.100'::timestamp

UPDATE
	"LinqDataTypes"
SET
	"DateTimeValue" = :pdt
WHERE
	"LinqDataTypes"."ID" = 1

