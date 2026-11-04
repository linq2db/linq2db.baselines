-- SqlServer.2014.MS SqlServer.2014
SELECT
	[c_1].[ChildID],
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Child] [c_1]
		CROSS APPLY (
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				(
					SELECT TOP (1)
						[g_1].[ParentID]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ChildID] = [c_1].[ChildID]
				) [a_LinkedParentRequired]
					INNER JOIN [Parent] [p] ON [a_LinkedParentRequired].[ParentID] = [p].[ParentID]
		) [t1]

