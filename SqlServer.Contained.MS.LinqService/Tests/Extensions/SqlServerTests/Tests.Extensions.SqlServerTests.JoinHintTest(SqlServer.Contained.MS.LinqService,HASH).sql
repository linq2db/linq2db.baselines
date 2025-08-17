BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER HASH JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

