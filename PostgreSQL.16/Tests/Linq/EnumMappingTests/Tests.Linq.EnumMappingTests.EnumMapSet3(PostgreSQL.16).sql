BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	101,
	3
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"LinqDataTypes"
SET
	"IntValue" = 4
WHERE
	"LinqDataTypes"."ID" = 101 AND "LinqDataTypes"."IntValue" = 3

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."IntValue" = 4

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

