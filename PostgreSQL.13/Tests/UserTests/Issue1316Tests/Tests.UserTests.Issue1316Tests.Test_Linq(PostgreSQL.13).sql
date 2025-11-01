-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" IN (4, 5, 6)
LIMIT 2

