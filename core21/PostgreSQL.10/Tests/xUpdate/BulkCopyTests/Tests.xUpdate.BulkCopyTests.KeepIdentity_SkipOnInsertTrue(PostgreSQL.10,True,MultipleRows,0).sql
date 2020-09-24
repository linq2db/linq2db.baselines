BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:Value_1
)
RETURNING 
	"ID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"intDataType"
)
VALUES
(238,200),
(248,300)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 228

SELECT
	t1."ID",
	t1."intDataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId
ORDER BY
	t1."ID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 228

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

