﻿BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	(
		SELECT TOP 3
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

