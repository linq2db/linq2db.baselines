﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(Count(*) = 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] <= 3

