BeforeExecute
-- SqlServer.2022
DECLARE @id1 Int -- Int32
SET     @id1 = 3
DECLARE @ParentID Int -- Int32
SET     @ParentID = 3

SELECT TOP (1)
	[с].[ChildID]
FROM
	[GrandChild] [с]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [li]
				INNER JOIN [Child] [a_ManyToMany] ON [li].[ParentID] = [a_ManyToMany].[ParentID]
				INNER JOIN [GrandChild] [a_Child] ON [a_ManyToMany].[ChildID] = [a_Child].[ChildID]
				LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = @id1 AND [a_Parent].[ParentID] IS NOT NULL AND
			[li].[ParentID] = @ParentID
	)
ORDER BY
	[с].[ChildID]

