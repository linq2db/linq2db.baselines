BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0102030405'::bytea
DECLARE @p Integer -- Int32
SET     @p = 1

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @BinaryValue Bytea(5) -- Binary
SET     @BinaryValue = E'\\x0504030201'::bytea
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	"LinqDataTypes"
SET
	"BinaryValue" = :BinaryValue
WHERE
	"LinqDataTypes"."ID" = :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

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

