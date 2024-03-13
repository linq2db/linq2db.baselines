﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(Count(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] > 1
	)

