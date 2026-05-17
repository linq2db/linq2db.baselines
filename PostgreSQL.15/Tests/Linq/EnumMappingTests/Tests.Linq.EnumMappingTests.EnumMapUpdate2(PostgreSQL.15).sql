-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.15 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	101,
	11
)

-- PostgreSQL.15 PostgreSQL

UPDATE
	"LinqDataTypes"
SET
	"BigIntValue" = 12
WHERE
	"LinqDataTypes"."ID" = 101 AND "LinqDataTypes"."BigIntValue" = 11

-- PostgreSQL.15 PostgreSQL

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."BigIntValue" = 12
LIMIT 1

-- PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

