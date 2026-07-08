-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	LEAD(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	LAG(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

