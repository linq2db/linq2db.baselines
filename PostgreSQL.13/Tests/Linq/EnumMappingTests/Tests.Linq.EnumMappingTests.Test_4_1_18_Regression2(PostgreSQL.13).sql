-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue",
	"IntValue"
)
VALUES
(
	101,
	4,
	10
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."BigIntValue" IS NOT NULL AND t1."IntValue" IS NOT NULL,
	t1."BigIntValue",
	t1."IntValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = 101

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

