﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Min([t2].[ParentID])
FROM
	(
		SELECT TOP 3
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[Value1]
	) [t2]

