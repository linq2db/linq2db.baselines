BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Child] [c_1],
	[GetParentByID](2) [p]

