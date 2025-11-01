-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Numeric(4, 0) -- Decimal
SET     @MoneyValue = 1000
DECLARE @SmallIntValue Smallint -- Int16
SET     @SmallIntValue = 100

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	:MoneyValue,
	:SmallIntValue
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes"
SET
	"MoneyValue" = 2000,
	"SmallIntValue" = 200
WHERE
	"LinqDataTypes"."ID" = :ID

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001

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
	t."ID" = :ID
LIMIT 2

