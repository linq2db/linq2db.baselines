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
	"ID"
)
VALUES
(
	101
)

-- PostgreSQL.15 PostgreSQL13

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101
LIMIT 1

-- PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

