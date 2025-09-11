BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

