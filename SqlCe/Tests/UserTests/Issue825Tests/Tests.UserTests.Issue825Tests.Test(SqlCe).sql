BeforeExecute
-- SqlCe
DECLARE @userId Int -- Int32
SET     @userId = 32
DECLARE @childId Int -- Int32
SET     @childId = 32

SELECT
	[a_Parent].[ParentID] as [Id]
FROM
	[Parent] [child_1]
		INNER JOIN [Child] [a_Childs] ON [child_1].[ParentID] = [a_Childs].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [a_Childs].[ParentID] = [a_Parent].[ParentID]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [permission]
		WHERE
			[child_1].[ParentID] = [permission].[ParentID] AND
			[permission].[ChildID] = @userId
	) AND
	[a_Childs].[ChildID] = @childId

