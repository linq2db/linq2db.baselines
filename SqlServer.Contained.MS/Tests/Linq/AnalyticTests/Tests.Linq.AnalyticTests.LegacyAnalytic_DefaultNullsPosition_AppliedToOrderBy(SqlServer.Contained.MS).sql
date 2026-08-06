-- SqlServer.Contained.MS SqlServer.2019
SELECT
	SUM([p].[Value1]) OVER (ORDER BY [p].[Value1])
FROM
	[Parent] [p]

