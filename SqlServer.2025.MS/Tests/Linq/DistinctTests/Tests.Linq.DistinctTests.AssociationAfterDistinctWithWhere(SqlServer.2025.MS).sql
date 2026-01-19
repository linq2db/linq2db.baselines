-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID_1],
	[t1].[Value1]
FROM
	(
		SELECT DISTINCT
			[c_1].[ParentID],
			[c_1].[ChildID],
			[a_Parent].[ParentID] as [ParentID_1],
			[a_Parent].[Value1]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_1].[ChildID] > 10
	) [t1]
		LEFT JOIN [Parent] [a_Parent_1] ON [t1].[ParentID] = [a_Parent_1].[ParentID]
ORDER BY
	[a_Parent_1].[ParentID],
	[t1].[ChildID]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

