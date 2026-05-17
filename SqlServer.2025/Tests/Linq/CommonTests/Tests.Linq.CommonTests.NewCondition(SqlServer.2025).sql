-- SqlServer.2025

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100)
FROM
	[Parent] [p]

