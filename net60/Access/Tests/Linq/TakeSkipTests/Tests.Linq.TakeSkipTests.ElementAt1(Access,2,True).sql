﻿BeforeExecute
-- Access AccessOleDb

SELECT TOP 3
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1

