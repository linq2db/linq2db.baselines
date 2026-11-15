-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	LEAD([p].[ProcessName], 2) OVER (ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	LEAD([p].[ProcessName]) OVER (ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	LAG([p].[ProcessName], 2) OVER (ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	LAG([p].[ProcessName]) OVER (ORDER BY [p].[ProcessID])
FROM
	[Issue1799Table3] [p]

