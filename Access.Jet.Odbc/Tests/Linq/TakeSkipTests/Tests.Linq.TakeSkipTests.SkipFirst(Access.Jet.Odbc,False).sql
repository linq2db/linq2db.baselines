﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]

