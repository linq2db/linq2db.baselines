-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
UPDATE
	"LinqDataTypes"
SET
	"IntValue" = 4
WHERE
	"LinqDataTypes"."ID" = 101 AND "LinqDataTypes"."IntValue" = 3

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."IntValue" = 4

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

