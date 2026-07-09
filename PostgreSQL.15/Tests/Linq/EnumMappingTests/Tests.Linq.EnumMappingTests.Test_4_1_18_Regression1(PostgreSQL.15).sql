-- PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.15 PostgreSQL13

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue",
	"IntValue"
)
VALUES
(
	101,
	12,
	10
)

-- PostgreSQL.15 PostgreSQL13

SELECT
	t1."BigIntValue" IS NOT NULL AND t1."IntValue" IS NOT NULL,
	t1."BigIntValue",
	t1."IntValue"
FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" = 101

-- PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

