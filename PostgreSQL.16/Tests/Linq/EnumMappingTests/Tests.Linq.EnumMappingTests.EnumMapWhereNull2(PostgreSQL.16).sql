-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

INSERT INTO "LinqDataTypes"
(
	"ID"
)
VALUES
(
	101
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."BigIntValue" IS NULL
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

