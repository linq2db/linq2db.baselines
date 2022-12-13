BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table1"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table1"
(
	"EventUser" Int       NOT NULL,
	"ProcessID" Int       NOT NULL,
	"EventTime" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table2"
(
	"UserId"     Int  NOT NULL,
	"UserGroups" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table3"
(
	"ProcessID"   Int  NOT NULL,
	"ProcessName" text     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	t1."User_1",
	t1."ProcessName",
	t1."UserGroups",
	Sum(t1."Diff")
FROM
	(
		SELECT
			x."EventUser" as "User_1",
			u."UserGroups",
			p."ProcessName",
			EXTRACT(EPOCH FROM (x."EventTime"::timestamp - LAG(x."EventTime") OVER(PARTITION BY x."EventUser", x."ProcessID" ORDER BY x."EventTime")::timestamp)) / 60 as "Diff"
		FROM
			"Issue1799Table1" x
				INNER JOIN "Issue1799Table2" u ON u."UserId" = x."EventUser"
				INNER JOIN "Issue1799Table3" p ON p."ProcessID" = x."ProcessID"
	) t1
GROUP BY
	t1."User_1",
	t1."UserGroups",
	t1."ProcessName"
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table2"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table1"

