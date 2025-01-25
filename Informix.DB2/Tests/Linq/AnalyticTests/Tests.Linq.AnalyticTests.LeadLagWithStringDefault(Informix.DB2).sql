BeforeExecute
-- Informix.DB2 Informix

SELECT
	LEAD(p.ProcessName, 1, 'None') OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	LAG(p.ProcessName, 1, 'None') OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

