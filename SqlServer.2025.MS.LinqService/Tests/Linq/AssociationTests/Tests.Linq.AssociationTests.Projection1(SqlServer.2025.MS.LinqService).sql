BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [c_1].[ParentID] = [g_1].[ParentID]
WHERE
	[a_Parent].[ParentID] = 2 AND [g_1].[ChildID] = 22

