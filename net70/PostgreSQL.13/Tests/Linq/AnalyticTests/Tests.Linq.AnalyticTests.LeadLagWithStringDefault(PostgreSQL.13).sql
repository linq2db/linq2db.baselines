BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table3"
(
	"ProcessID"   Int  NOT NULL,
	"ProcessName" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(1,'One'),
(2,'Two')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	LEAD(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	LAG(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

