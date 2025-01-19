BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Has Boolean
SET     @Has = True

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	:Has
)
RETURNING 
	"Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	t1."Id",
	t1."Has"
FROM
	"Issue1438" t1
WHERE
	t1."Id" = :id
LIMIT 2

