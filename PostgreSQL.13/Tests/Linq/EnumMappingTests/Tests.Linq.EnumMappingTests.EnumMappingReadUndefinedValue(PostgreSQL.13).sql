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
	"BigIntValue"
)
VALUES
(
	101,
	5
)

-- PostgreSQL.13 PostgreSQL

SELECT
	r."ID",
	r."BigIntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101

-- PostgreSQL.13 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

