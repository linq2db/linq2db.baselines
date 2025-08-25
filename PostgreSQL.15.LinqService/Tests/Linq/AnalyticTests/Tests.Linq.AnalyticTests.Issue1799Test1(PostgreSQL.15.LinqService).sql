BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
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

