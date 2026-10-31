-- SqlServer.CS.MS SqlServer.2025
SELECT
	[c_1].[ChildID],
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				(
					SELECT TOP (1)
						1 as [c1]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ChildID] = [c_1].[ChildID]
				) [a_LinkedParentByOuterKey]
					LEFT JOIN [Parent] [p] ON [p].[ParentID] = [c_1].[ParentID]
		) [t1]

