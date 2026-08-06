-- SqlServer.2025.MS SqlServer.2025
SELECT
	SUM([p].[Value1]) OVER (ORDER BY [p].[Value1])
FROM
	[Parent] [p]

