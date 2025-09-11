BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

