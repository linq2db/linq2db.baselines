﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT TOP 1
			[r].[Value1]
		FROM
			[Parent] [r]
	) IS NOT NULL

