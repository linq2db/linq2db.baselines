BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @TestField Bigint -- Int64
SET     @TestField = 12
DECLARE @Int32Field Integer -- Int32
SET     @Int32Field = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue",
	"IntValue"
)
VALUES
(
	:Id,
	:TestField,
	:Int32Field
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."BigIntValue" = 12

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

