BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0102030405'
DECLARE @p1 Integer -- Int32
SET     @p1 = 1

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = :p1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0504030201'
DECLARE @p1 Integer -- Int32
SET     @p1 = 2

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = :p1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" IN (1, 2)

