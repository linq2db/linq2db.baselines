INSERT BULK "Issue4672Table"(Interval)

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Interval"
FROM
	"Issue4672Table" t1
LIMIT 2

