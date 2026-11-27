-- Informix.DB2 Informix
SELECT
	LEAD(p.ProcessName, 2) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- Informix.DB2 Informix
SELECT
	LEAD(p.ProcessName) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- Informix.DB2 Informix
SELECT
	LAG(p.ProcessName, 2) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- Informix.DB2 Informix
SELECT
	LAG(p.ProcessName) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

