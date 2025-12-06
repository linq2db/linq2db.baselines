-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"intDataType"
)
VALUES
(13,200),
(23,300)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= :lastId

