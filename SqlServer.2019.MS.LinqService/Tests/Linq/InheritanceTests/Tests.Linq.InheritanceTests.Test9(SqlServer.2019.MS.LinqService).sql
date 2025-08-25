BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	([p].[ParentID] = 1 OR [p].[ParentID] = 2 OR [p].[ParentID] = 4) AND
	[p].[Value1] IS NULL

