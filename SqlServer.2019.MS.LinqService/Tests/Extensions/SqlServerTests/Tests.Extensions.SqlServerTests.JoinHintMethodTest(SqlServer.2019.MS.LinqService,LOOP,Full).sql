BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		FULL LOOP JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

