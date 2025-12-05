-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 3

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
OFFSET @skip ROWS

