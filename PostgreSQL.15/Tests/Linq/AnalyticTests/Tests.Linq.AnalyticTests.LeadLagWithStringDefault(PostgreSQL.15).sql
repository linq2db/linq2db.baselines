-- PostgreSQL.15 PostgreSQL12
SELECT
	LEAD(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

-- PostgreSQL.15 PostgreSQL12
SELECT
	LAG(p."ProcessName", 1, 'None') OVER (ORDER BY p."ProcessID")
FROM
	"ProcessNameRecord" p

