﻿BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT TOP 4 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1

