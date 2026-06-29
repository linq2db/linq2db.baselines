-- SqlServer.2022.MS SqlServer.2022

SELECT
	SUM([p].[Value1]) OVER (ORDER BY [p].[Value1])
FROM
	[Parent] [p]

