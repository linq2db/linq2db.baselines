-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:Value
)
RETURNING 
	"ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

INSERT INTO "AllTypes"
(
	"ID",
	"intDataType"
)
VALUES
(13,200),
(23,300)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

SELECT
	t1."ID",
	t1."intDataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId
ORDER BY
	t1."ID"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

