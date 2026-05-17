-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LEAD(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LAG(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

