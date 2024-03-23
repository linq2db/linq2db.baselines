BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1438"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1438"
(
	"Id"  SERIAL   NOT NULL,
	"Has" Boolean  NOT NULL,

	CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
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

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1438"

