-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	LEAD(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	LEAD(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	LAG(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	LAG(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

