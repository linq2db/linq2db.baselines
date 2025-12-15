-- SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		CROSS APPLY [GetParentByID]([c_1].[ParentID]) [p]

