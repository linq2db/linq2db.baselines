﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

