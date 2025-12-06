-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (3)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100

