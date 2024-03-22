BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1316Tests"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1316Tests"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 5

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" = :Item1
LIMIT 2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1316Tests"

