BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT DISTINCT 
	IIF([p].[Value1] IS NULL, [p].[ParentID] % 2, [p].[Value1])
FROM
	[Parent] [p]

