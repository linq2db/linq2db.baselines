BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
OPTION (MAX_GRANT_PERCENT=10)

