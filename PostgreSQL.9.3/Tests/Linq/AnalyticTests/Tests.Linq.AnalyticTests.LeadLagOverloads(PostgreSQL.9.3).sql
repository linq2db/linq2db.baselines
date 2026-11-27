-- PostgreSQL.9.3 PostgreSQL
SELECT
	LEAD(p."ProcessName", 2) OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

-- PostgreSQL.9.3 PostgreSQL
SELECT
	LEAD(p."ProcessName") OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

-- PostgreSQL.9.3 PostgreSQL
SELECT
	LAG(p."ProcessName", 2) OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

-- PostgreSQL.9.3 PostgreSQL
SELECT
	LAG(p."ProcessName") OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

