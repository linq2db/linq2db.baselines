﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	IIF([p].[ParentID] IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	), True, False)
FROM
	[Parent] [p]

