﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = [p].[Value1] AND [p].[Value1] = 1

