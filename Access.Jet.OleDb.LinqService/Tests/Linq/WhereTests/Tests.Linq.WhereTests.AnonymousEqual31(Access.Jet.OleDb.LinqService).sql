﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] = 2 AND [ch].[ChildID] = 21

