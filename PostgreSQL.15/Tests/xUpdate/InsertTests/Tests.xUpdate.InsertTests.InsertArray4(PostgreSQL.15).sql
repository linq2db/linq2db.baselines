BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Numeric(1, 0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime2
SET     @DateTimeValue = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'::uuid
DECLARE @BinaryValue Bytea(4) -- Binary
SET     @BinaryValue = E'\\x01020304'::bytea
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 0

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"DateTimeValue",
	"BoolValue",
	"GuidValue",
	"BinaryValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:DateTimeValue,
	:BoolValue,
	:GuidValue,
	:BinaryValue,
	:SmallIntValue
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."ID",
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1001
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t
WHERE
	t."ID" > 1000

