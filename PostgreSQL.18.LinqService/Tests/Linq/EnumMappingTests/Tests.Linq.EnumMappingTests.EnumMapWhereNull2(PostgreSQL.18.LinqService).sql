BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID"
)
VALUES
(
	101
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."BigIntValue" IS NULL
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

