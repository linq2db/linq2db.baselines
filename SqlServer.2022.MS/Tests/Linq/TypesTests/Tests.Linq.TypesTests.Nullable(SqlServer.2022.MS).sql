-- SqlServer.2022.MS SqlServer.2022

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 0)
FROM
	[Parent] [p]

