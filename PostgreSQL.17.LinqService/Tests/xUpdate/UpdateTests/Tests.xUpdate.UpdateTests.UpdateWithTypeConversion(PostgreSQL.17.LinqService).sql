BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1001

INSERT INTO "LinqDataTypes"
(
	"ID",
	"MoneyValue",
	"SmallIntValue"
)
VALUES
(
	:ID,
	100,
	200
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes"
SET
	"SmallIntValue" = Floor("LinqDataTypes"."MoneyValue")::SmallInt,
	"MoneyValue" = "LinqDataTypes"."SmallIntValue"::decimal
WHERE
	"LinqDataTypes"."ID" = :id

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"LinqDataTypes"
SET
	"SmallIntValue" = Floor("LinqDataTypes"."MoneyValue")::SmallInt,
	"MoneyValue" = "LinqDataTypes"."SmallIntValue"::decimal
WHERE
	"LinqDataTypes"."ID" = :id

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

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
	t."ID" = :id
LIMIT 2

