-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	"ID"
)
VALUES
(
	:ID
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" = :p
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" = :Id
LIMIT 2

