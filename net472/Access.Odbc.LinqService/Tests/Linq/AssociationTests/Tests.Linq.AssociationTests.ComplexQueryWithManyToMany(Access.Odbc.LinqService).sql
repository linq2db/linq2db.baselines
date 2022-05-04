﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id2 Int -- Int32
SET     @id2 = 3
DECLARE @id Int -- Int32
SET     @id = 3

SELECT TOP 1
	[с].[ChildID]
FROM
	[GrandChild] [с]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(([Parent] [_]
				INNER JOIN [Child] [c_1] ON ([_].[ParentID] = [c_1].[ParentID]))
					INNER JOIN [GrandChild] [a_Child] ON ([c_1].[ChildID] = [a_Child].[ChildID]))
				LEFT JOIN [Parent] [a_Parent] ON ([a_Child].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = ? AND
			[_].[ParentID] = ?
	)
ORDER BY
	[с].[ChildID]

