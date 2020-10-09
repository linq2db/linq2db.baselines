BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT 
	IIF([p].[Value1] IS NULL, 100, [p].[Value1])
FROM
	[Parent] [p]

