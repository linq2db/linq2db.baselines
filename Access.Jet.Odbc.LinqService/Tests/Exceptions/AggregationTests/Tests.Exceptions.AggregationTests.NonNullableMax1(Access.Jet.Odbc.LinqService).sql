﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	MAX([t1].[ParentID])
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

