﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	),
	(
		SELECT TOP 1
			[l_1].[ParentID] + 1
		FROM
			[Child] [l_1]
	)
FROM
	[Parent] [sep]

