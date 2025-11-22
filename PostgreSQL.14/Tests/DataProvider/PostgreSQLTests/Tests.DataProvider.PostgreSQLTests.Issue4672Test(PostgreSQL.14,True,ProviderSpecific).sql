INSERT BULK "Issue4672Table"(Interval)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Interval"
FROM
	"Issue4672Table" t1
LIMIT 2

