BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Numeric(1,0) -- Decimal
SET     @MoneyValue = 0
DECLARE @DateTimeValue Timestamp -- DateTime
SET     @DateTimeValue = NULL
DECLARE @BoolValue Boolean
SET     @BoolValue = True
DECLARE @GuidValue Uuid -- Guid
SET     @GuidValue = '00000000-0000-0000-0000-000000000000'
DECLARE @BinaryValue Bytea(4) -- Binary
SET     @BinaryValue = E'\\x01020304'
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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

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
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

