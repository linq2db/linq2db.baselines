BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] > 3 OR [ch].[ChildID] < 4
ORDER BY
	[ch].[ParentID],
	[ch].[ChildID]
OFFSET 3 ROWS

