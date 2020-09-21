BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(200),
(300)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 120

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
-- PostgreSQL.9.2 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 120

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

