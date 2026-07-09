-- PostgreSQL.13 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.13 PostgreSQL13

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

-- PostgreSQL.13 PostgreSQL13

UPDATE
	"LinqDataTypes"
SET
	"BigIntValue" = 12
WHERE
	"LinqDataTypes"."ID" = 101 AND "LinqDataTypes"."BigIntValue" = 11

-- PostgreSQL.13 PostgreSQL13

SELECT
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."BigIntValue" = 12
LIMIT 1

-- PostgreSQL.13 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

