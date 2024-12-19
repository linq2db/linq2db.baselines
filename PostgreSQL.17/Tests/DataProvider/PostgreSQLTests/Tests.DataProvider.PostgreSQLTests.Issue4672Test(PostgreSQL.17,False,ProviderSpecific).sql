BeforeExecute
--  PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4672Table"

BeforeExecute
--  PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4672Table"
(
	"Id"       SERIAL    NOT NULL,
	"Interval" interval      NULL
)

BeforeExecute
INSERT BULK "Issue4672Table"(Interval)

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Interval"
FROM
	"Issue4672Table" t1
LIMIT 2

BeforeExecute
--  PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4672Table"

