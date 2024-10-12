BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	entity."ID",
	entity."BigIntValue"
FROM
	"LinqDataTypes" entity
WHERE
	entity."BigIntValue" = 12

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

