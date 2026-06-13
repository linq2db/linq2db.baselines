-- YDB Ydb

SELECT
	LEAD(p.ProcessName, 2) OVER(ORDER BY p.ProcessID) as c1
FROM
	Issue1799Table3 p

-- YDB Ydb

SELECT
	LEAD(p.ProcessName) OVER(ORDER BY p.ProcessID) as c1
FROM
	Issue1799Table3 p

-- YDB Ydb

SELECT
	LAG(p.ProcessName, 2) OVER(ORDER BY p.ProcessID) as c1
FROM
	Issue1799Table3 p

-- YDB Ydb

SELECT
	LAG(p.ProcessName) OVER(ORDER BY p.ProcessID) as c1
FROM
	Issue1799Table3 p

