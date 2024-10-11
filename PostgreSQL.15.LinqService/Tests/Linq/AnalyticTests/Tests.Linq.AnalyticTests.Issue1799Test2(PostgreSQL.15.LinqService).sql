BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table1"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table1"
(
	"EventUser" Int       NOT NULL,
	"ProcessID" Int       NOT NULL,
	"EventTime" TimeStamp NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table2"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table2"
(
	"UserId"     Int  NOT NULL,
	"UserGroups" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1799Table3"
(
	"ProcessID"   Int  NOT NULL,
	"ProcessName" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
			q."EventUser" as "User_1",
			q."ProcessID" as "Proc",
			EXTRACT(EPOCH FROM (q."EventTime"::timestamp - LAG(q."EventTime") OVER(PARTITION BY q."EventUser", q."ProcessID" ORDER BY q."EventTime")::timestamp)) / 60 as "Diff"
		FROM
			"Issue1799Table1" q
	) g_1
		INNER JOIN "Issue1799Table2" u ON u."UserId" = g_1."User_1"
		INNER JOIN "Issue1799Table3" p ON p."ProcessID" = g_1."Proc"
GROUP BY
	g_1."User_1",
	u."UserGroups",
	p."ProcessName"
LIMIT :take

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table3"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table2"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1799Table1"

