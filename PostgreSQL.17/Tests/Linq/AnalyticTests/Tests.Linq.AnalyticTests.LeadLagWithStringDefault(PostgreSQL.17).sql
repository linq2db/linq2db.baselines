-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	LEAD(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	LAG(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

