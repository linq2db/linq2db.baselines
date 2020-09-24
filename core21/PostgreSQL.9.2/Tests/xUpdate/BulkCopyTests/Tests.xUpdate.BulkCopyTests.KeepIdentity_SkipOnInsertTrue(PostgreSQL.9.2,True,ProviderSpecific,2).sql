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
INSERT ASYNC BULK "AllTypes"(ID, intDataType

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 233

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
SET     @lastId = 233

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

