BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4348Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4348Table"
(
	"Id"    Int   NOT NULL,
	"Value" jsonb     NULL,

	CONSTRAINT "PK_Issue4348Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @storeId Integer -- Int32
SET     @storeId = 1

SELECT
	i."Id"
FROM
	"Issue4348Table" i
WHERE
	i."Value" IS NULL OR i."Value" @> '[:storeId]'
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4348Table"

