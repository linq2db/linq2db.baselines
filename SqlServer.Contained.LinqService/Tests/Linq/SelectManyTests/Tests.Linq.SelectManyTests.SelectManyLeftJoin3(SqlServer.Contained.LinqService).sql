BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p],
	[Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

