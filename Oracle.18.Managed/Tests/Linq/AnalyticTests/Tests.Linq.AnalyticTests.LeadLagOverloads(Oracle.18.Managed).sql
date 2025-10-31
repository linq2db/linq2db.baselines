-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName", 2) OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName") OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

