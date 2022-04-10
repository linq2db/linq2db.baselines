﻿BeforeExecute
-- SQLite.Classic SQLite

WITH [CTE_1] ([ParentID])
AS
(
	SELECT
		[c_1].[ParentID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
)
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [CTE_1] [c_2] ON [p].[ParentID] = [c_2].[ParentID]
		INNER JOIN [CTE_1] [c2] ON [p].[ParentID] = [c2].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [Child] [c_2] ON [p].[ParentID] = [c_2].[ParentID]
WHERE
	[c_2].[ParentID] > 1 AND [c_1].[ParentID] > 1

