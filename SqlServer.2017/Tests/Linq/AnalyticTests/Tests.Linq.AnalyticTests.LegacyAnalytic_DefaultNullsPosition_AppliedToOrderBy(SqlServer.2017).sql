-- SqlServer.2017
SELECT
	SUM([p].[Value1]) OVER (ORDER BY [p].[Value1])
FROM
	[Parent] [p]

