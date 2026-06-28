-- PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 103

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

-- PostgreSQL.15 PostgreSQL13

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

-- PostgreSQL.15 PostgreSQL13
DECLARE @param Bigint -- Int64
SET     @param = 11

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
SELECT
	r."ID" + 1,
	:param
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101 AND r."BigIntValue" = 12

-- PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 102 AND r."BigIntValue" = 11

-- PostgreSQL.15 PostgreSQL13
DECLARE @p Integer -- Int32
SET     @p = 103

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :p

