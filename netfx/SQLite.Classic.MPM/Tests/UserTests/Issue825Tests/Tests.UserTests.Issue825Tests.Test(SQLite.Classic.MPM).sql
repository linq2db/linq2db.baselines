BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @childId  -- Int32
SET     @childId = 32
DECLARE @userId  -- Int32
SET     @userId = 32

SELECT
	[child_1].[ParentID]
FROM
	[Parent] [child_1]
		INNER JOIN [Child] [a_Childs] ON [child_1].[ParentID] = [a_Childs].[ParentID]
WHERE
	[a_Childs].[ChildID] = @childId AND EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [permission]
		WHERE
			[permission].[ChildID] = @userId AND [child_1].[ParentID] = [permission].[ParentID]
	)

