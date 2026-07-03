-- SqlServer.2016.MS SqlServer.2016

SELECT
	SUM([p].[Value1]) OVER (ORDER BY [p].[Value1])
FROM
	[Parent] [p]

