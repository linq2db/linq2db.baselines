BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Parent] [pp] ON [p].[ParentID] = [pp].[ParentID]
ORDER BY
	[p].[ParentID] DESC

