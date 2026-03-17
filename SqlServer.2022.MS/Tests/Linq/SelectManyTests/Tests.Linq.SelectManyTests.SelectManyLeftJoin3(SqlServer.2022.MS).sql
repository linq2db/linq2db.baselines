-- SqlServer.2022.MS SqlServer.2022

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p],
	[Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

