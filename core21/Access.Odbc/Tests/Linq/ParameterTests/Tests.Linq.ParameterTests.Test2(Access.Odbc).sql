﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 1
DECLARE @id3 Int -- Int32
SET     @id3 = 10000

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(([p].[ParentID] = ? OR [p].[ParentID] >= ?) OR [p].[ParentID] >= ?)
ORDER BY
	[p].[ParentID]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @id1 Int -- Int32
SET     @id1 = 2
DECLARE @id2 Int -- Int32
SET     @id2 = 2
DECLARE @id3 Int -- Int32
SET     @id3 = 10000

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(([p].[ParentID] = ? OR [p].[ParentID] >= ?) OR [p].[ParentID] >= ?)
ORDER BY
	[p].[ParentID]

