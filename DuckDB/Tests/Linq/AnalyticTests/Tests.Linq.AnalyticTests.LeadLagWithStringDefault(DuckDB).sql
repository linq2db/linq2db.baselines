-- DuckDB
SELECT
	LEAD(p.ProcessName, 1, 'None') OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

-- DuckDB
SELECT
	LAG(p.ProcessName, 1, 'None') OVER (ORDER BY p.ProcessID)
FROM
	ProcessNameRecord p

