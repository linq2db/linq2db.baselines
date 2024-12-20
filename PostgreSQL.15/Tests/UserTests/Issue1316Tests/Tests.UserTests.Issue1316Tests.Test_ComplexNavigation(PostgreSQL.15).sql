BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1316Tests"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1316Tests"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_Issue1316Tests" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT
	t1."ID"
FROM
	"Issue1316Tests" t1
WHERE
	t1."ID" = :Id
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1316Tests"

