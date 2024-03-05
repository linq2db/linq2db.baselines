BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @childId Int -- Int32
SET     @childId = 32
DECLARE @userId Int -- Int32
SET     @userId = 32

SELECT
	[child_1].[ParentID]
FROM
	[Parent] [child_1]
		INNER JOIN [Child] [a_Childs] ON ([child_1].[ParentID] = [a_Childs].[ParentID])
WHERE
	[a_Childs].[ChildID] = ? AND EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [permission]
		WHERE
			[permission].[ChildID] = ? AND [child_1].[ParentID] = [permission].[ParentID]
	)

