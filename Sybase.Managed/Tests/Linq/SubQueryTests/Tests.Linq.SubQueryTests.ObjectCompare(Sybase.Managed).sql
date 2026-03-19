-- Sybase.Managed Sybase

SELECT
	[sub].[ParentID_1],
	[sub].[ChildID] + 1
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
	[sub].[ChildID] > -1 AND [sub].[ParentID_1] = [a_Parent].[ParentID] AND
	([sub].[Value1] = [a_Parent].[Value1] OR [sub].[Value1] IS NULL AND [a_Parent].[Value1] IS NULL)

