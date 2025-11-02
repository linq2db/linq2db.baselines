-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 1000

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @tt Bigint -- Int64
SET     @tt = 600000000

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	1001,
	:tt
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."ID",
	t."BigIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1001
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 1000

