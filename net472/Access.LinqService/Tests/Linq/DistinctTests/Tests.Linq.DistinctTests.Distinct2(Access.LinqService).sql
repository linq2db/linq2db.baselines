﻿BeforeExecute
-- Access AccessOleDb

SELECT DISTINCT
	Iif([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1])
FROM
	[Parent] [p]

