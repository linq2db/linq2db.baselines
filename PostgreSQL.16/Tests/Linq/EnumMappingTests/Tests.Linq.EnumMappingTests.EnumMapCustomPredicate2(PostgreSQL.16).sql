-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	entity."ID",
	entity."BigIntValue",
	entity."IntValue"
FROM
	"LinqDataTypes" entity
WHERE
	entity."BigIntValue" = 12

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

