-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 0)
FROM
	[Parent] [p]

