﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	LEAD(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	LAG(p."ProcessName", 1, 'None') OVER(ORDER BY p."ProcessID")
FROM
	"Issue1799Table3" p

