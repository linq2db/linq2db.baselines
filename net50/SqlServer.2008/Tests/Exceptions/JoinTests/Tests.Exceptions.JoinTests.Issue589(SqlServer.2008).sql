BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[grandChild_1].[GrandChildID],
	[child_1].[ChildID],
	[a_Parent].[ParentID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [grandChild_1]
		INNER JOIN [Child] [child_1] ON [grandChild_1].[ChildID] = [child_1].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [child_1].[ParentID] = [a_Parent].[ParentID]
		OUTER APPLY (
			SELECT TOP (@take)
				[grandChild1].[GrandChildID]
			FROM
				[Child] [child1]
					INNER JOIN [Parent] [parent1] ON [child1].[ParentID] = [parent1].[ParentID]
					INNER JOIN [GrandChild] [grandChild1]
						LEFT JOIN [Child] [a_Child] ON [grandChild1].[ChildID] = [a_Child].[ChildID]
					ON [parent1].[ParentID] = [a_Child].[ParentID]
			WHERE
				[grandChild1].[ParentID] = [a_Parent].[ParentID]
		) [t1]

