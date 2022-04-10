BeforeExecute
-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		RIGHT MERGE JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

