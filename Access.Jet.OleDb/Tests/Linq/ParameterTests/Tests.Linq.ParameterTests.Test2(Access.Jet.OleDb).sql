﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id1_1 Integer -- Int32
SET     @id1_1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 10000

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id1 OR [p].[ParentID] >= @id1_1 OR
	[p].[ParentID] >= @id2
ORDER BY
	[p].[ParentID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id1 Integer -- Int32
SET     @id1 = 2
DECLARE @id1_1 Integer -- Int32
SET     @id1_1 = 2
DECLARE @id2 Integer -- Int32
SET     @id2 = 10000

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id1 OR [p].[ParentID] >= @id1_1 OR
	[p].[ParentID] >= @id2
ORDER BY
	[p].[ParentID]

