BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
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
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"intDataType"
)
VALUES
(154,200),
(164,300)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 144

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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 144

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

