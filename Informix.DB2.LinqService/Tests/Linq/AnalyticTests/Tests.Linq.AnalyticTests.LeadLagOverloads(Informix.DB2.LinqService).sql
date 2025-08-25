BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	LEAD(p.ProcessName, 2) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	LEAD(p.ProcessName) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	LAG(p.ProcessName, 2) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	LAG(p.ProcessName) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

