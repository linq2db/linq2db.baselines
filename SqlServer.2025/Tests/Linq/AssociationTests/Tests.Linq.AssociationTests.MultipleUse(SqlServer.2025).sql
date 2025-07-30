BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID_1],
	[t1].[Value1]
FROM
	[Child] [s]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID],
				[c_1].[ChildID],
				[a_Parent].[ParentID] as [ParentID_1],
				[a_Parent].[Value1]
			FROM
				[Child] [c_1]
					LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
			WHERE
				[c_1].[ChildID] = [s].[ChildID]
		) [t1]
WHERE
	[t1].[ParentID] IS NOT NULL

