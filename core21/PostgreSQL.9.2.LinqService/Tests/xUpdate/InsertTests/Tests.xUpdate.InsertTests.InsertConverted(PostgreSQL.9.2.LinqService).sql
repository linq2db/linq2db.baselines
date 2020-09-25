BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" >= 1000

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t."ID",
	t."BigIntValue"
FROM
	"LinqDataTypes" t
WHERE
	t."ID" = 1001
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" >= 1000

