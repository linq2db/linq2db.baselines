﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*) = 0
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT (([x].[ChildID] IS NOT NULL AND [x].[ChildID] = 11) AND ([x].[GrandChildID] IS NOT NULL AND [x].[GrandChildID] = 777))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*) = 0
FROM
	[GrandChild] [x]
WHERE
	[x].[ParentID] = 1 AND NOT (([x].[GrandChildID] IS NOT NULL AND [x].[GrandChildID] = 777) AND ([x].[ChildID] IS NOT NULL AND [x].[ChildID] = 11))

