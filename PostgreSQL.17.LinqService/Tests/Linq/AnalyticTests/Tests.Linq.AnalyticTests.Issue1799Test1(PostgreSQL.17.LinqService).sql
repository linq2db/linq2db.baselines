BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table1"
(
	"EventUser" Int       NOT NULL,
	"ProcessID" Int       NOT NULL,
	"EventTime" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table2"
(
	"UserId"     Int  NOT NULL,
	"UserGroups" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table3"
(
	"ProcessID"   Int  NOT NULL,
	"ProcessName" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	g_1."User_1",
	p."ProcessName",
	u."UserGroups",
	SUM(g_1."Diff") / 60
FROM
	(
		SELECT
			EXTRACT(EPOCH FROM (x."EventTime"::timestamp - LAG(x."EventTime") OVER(PARTITION BY x."EventUser", x."ProcessID" ORDER BY x."EventTime")::timestamp)) / 60 as "Diff",
			x."EventUser" as "User_1",
			x."ProcessID" as "Proc"
		FROM
			"Issue1799Table1" x
	) g_1
		INNER JOIN "Issue1799Table2" u ON u."UserId" = g_1."User_1"
		INNER JOIN "Issue1799Table3" p ON p."ProcessID" = g_1."Proc"
WHERE
	g_1."Diff" > 0 AND g_1."Diff" <= 5
GROUP BY
	g_1."User_1",
	u."UserGroups",
	p."ProcessName"
LIMIT :take

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table1"

