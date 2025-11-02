-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
		CROSS APPLY [GetParentByID]([a_Parent].[ParentID]) [p]

