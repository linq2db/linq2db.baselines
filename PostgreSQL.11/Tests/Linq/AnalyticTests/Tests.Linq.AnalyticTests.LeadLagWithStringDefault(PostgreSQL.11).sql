-- PostgreSQL.11 PostgreSQL
SELECT
	LEAD(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

-- PostgreSQL.11 PostgreSQL
SELECT
	LAG(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

