BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = [c_1].[ParentID]

