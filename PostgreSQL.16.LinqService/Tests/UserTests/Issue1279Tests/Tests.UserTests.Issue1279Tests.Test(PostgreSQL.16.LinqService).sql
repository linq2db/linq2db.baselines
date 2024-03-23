BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1279Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1279Table"
(
	"Id"      SERIAL     NOT NULL,
	"CharFld" character  NOT NULL,

	CONSTRAINT "PK_Issue1279Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	:CharFld
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."CharFld"
FROM
	"Issue1279Table" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1279Table"

