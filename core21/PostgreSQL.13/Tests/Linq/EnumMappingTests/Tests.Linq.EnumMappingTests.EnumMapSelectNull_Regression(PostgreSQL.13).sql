BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101
LIMIT :take

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p1

