BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p],
	[Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

