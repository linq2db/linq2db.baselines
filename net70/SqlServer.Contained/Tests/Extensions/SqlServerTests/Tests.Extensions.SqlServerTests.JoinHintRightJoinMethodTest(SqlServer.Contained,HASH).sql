BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		RIGHT HASH JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

