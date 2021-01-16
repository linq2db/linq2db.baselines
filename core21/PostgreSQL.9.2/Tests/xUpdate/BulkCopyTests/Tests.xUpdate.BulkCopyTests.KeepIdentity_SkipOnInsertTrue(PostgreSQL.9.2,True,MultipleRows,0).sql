BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

ALTER SEQUENCE "AllTypes_ID_seq" RESTART WITH 3

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
	"ID",
	"intDataType"
)
VALUES
(13,200),
(23,300)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

