BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" = :p
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" = :Id
LIMIT 2

