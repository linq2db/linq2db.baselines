BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

