﻿BeforeExecute
-- Access AccessOleDb

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION ALL
SELECT
	IIF([p2].[Value1] IS NOT NULL, [p2].[Value1], 0),
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p2]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

