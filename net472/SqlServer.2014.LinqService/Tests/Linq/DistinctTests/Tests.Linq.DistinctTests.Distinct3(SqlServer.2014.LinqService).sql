BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT DISTINCT 
	IIF([p].[Value1] IS NULL, [p].[ParentID] % 2, [p].[Value1]), 
	[p].[Value1]
FROM
	[Parent] [p]

