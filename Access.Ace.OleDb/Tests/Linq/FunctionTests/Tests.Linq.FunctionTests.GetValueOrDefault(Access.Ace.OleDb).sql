﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], 0)
FROM
	[Parent] [p]
WHERE
	[p].[Value1] > 0 AND [p].[Value1] IS NOT NULL

