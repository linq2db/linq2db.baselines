﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	(
		SELECT TOP 3
			*
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

