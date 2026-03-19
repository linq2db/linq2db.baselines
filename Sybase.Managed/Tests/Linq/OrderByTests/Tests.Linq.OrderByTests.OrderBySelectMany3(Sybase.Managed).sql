-- Sybase.Managed Sybase

SELECT
	[sub].[ParentID_1],
	[sub].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[t1].[ParentID] as [ParentID_1],
			[c_1].[ChildID],
			[t1].[Value1]
		FROM
			[Parent] [t1],
			[Child] [c_1]
	) [sub]
		INNER JOIN [Parent] [a_Parent] ON [sub].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[ParentID] = [sub].[ParentID_1] AND ([a_Parent].[Value1] = [sub].[Value1] OR [a_Parent].[Value1] IS NULL AND [sub].[Value1] IS NULL)
ORDER BY
	[sub].[ParentID_1],
	[sub].[ChildID]

