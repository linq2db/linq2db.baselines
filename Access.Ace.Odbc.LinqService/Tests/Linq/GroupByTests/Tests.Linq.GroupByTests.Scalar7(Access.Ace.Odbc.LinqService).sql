﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

