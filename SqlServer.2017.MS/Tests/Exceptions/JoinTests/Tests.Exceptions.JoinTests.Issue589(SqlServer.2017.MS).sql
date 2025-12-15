-- SqlServer.2017.MS SqlServer.2017

SELECT
	[grandChild_1].[GrandChildID],
	[child_1].[ChildID],
	[a_Parent].[ParentID],
	[pf_1].[Tmp]
FROM
	[GrandChild] [grandChild_1]
		INNER JOIN [Child] [child_1] ON [grandChild_1].[ChildID] = [child_1].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (1)
				[grandChild1].[GrandChildID] as [Tmp]
			FROM
				[Child] [pf]
					INNER JOIN [Parent] [parent1] ON [pf].[ParentID] = [parent1].[ParentID]
					INNER JOIN [GrandChild] [grandChild1]
						LEFT JOIN [Child] [a_Child] ON [grandChild1].[ChildID] = [a_Child].[ChildID]
					ON [parent1].[ParentID] = [a_Child].[ParentID]
			WHERE
				[grandChild1].[ParentID] = [a_Parent].[ParentID] OR
				[grandChild1].[ParentID] IS NULL AND [a_Parent].[ParentID] IS NULL
		) [pf_1]

