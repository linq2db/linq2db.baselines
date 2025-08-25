BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Parent] [pp] ON [p].[ParentID] = [pp].[ParentID]
ORDER BY
	[p].[ParentID] DESC

