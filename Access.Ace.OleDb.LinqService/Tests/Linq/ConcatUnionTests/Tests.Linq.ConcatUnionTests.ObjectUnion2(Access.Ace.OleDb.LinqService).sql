﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
WHERE
	[p1].[ParentID] > 3
UNION
SELECT
	IIF(False, 0, NULL),
	IIF(False, 0, NULL)
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] <= 3

