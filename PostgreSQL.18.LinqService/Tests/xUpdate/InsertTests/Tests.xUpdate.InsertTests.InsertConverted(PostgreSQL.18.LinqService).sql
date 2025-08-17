BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 1000

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t."ID",
	t."BigIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1001
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 1000

