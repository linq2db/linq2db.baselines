BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001
DECLARE @MoneyValue Numeric(4,0) -- Decimal
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

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001

UPDATE
	"LinqDataTypes"
SET
	"MoneyValue" = 2000,
	"SmallIntValue" = 200
WHERE
	"LinqDataTypes"."ID" = :ID

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 1001
DECLARE @take Integer -- Int32
SET     @take = 2

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
	t."ID" = :ID_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = :ID

