BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	IIF([p].[Value1] IS NULL, 100, [p].[Value1])
FROM
	[Parent] [p]

