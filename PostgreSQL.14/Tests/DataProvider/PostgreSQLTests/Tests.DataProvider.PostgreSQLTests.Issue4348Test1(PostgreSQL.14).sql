BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4348Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4348Table"
(
	"Id"    Int   NOT NULL,
	"Value" jsonb     NULL,

	CONSTRAINT "PK_Issue4348Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	i."Id"
FROM
	"Issue4348Table" i
WHERE
	i."Value" IS NULL OR i."Value" @> '[1]'
LIMIT 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4348Table"

