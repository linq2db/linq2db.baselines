BeforeExecute
-- SqlServer.2016

SELECT
	IIF([p].[Value1] IS NULL, 100, [p].[Value1])
FROM
	[Parent] [p]

