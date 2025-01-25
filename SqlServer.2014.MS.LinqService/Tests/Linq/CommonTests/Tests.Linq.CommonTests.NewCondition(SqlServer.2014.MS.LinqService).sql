BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 100)
FROM
	[Parent] [p]

