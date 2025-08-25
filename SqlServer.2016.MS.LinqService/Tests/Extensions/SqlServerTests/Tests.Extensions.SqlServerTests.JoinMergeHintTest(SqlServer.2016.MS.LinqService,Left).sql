BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		LEFT MERGE JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

