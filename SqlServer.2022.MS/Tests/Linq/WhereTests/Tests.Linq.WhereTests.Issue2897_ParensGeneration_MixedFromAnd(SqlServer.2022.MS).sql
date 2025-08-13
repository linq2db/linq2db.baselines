BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1 AND
	[p].[ParentID] > 2 AND
	([p].[ParentID] > 3 OR [p].[ParentID] > 4) AND
	([p].[ParentID] > 5 OR [p].[ParentID] > 6 OR [p].[ParentID] > 7) AND
	[p].[ParentID] > 8 AND
	[p].[ParentID] > 9 AND
	[p].[ParentID] > 10 AND
	([p].[ParentID] > 11 OR [p].[ParentID] > 12)

