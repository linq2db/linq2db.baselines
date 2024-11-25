﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @userId  -- Int32
SET     @userId = 32
DECLARE @childId  -- Int32
SET     @childId = 32

SELECT
	[child_1].[ParentID]
FROM
	[Parent] [child_1]
		INNER JOIN [Child] [a_Childs] ON ([child_1].[ParentID] = [a_Childs].[ParentID])
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[GrandChild] [permission]
		WHERE
			[child_1].[ParentID] = [permission].[ParentID] AND
			[permission].[ChildID] = ?
	) AND
	[a_Childs].[ChildID] = ?

