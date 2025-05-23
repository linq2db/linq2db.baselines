﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

UPDATE
	[Parent] [w]
		INNER JOIN [Child] [b] ON ([w].[ParentID] = [b].[ParentID])
SET
	[w].[Value1] = [b].[ChildID]
WHERE
	[b].[ChildID] = (
		SELECT
			MAX([b2].[ParentID])
		FROM
			[Child] [b2]
	) AND
	[b].[ChildID] = -1

