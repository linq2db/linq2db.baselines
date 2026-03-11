-- SqlServer.2025.MS SqlServer.2025

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p],
	[Child] [ch]
WHERE
	[p].[ParentID] = [ch].[ParentID]

