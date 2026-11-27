-- DuckDB
SELECT
	LEAD(p.ProcessName, 2) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- DuckDB
SELECT
	LEAD(p.ProcessName) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- DuckDB
SELECT
	LAG(p.ProcessName, 2) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- DuckDB
SELECT
	LAG(p.ProcessName) OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

