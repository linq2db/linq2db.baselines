-- PostgreSQL.13 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.13 PostgreSQL

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

-- PostgreSQL.13 PostgreSQL

UPDATE
	"LinqDataTypes"
SET
	"IntValue" = 4
WHERE
	"LinqDataTypes"."ID" = 101 AND "LinqDataTypes"."IntValue" = 3

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."IntValue" = 4

-- PostgreSQL.13 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

