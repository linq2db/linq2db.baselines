﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = @ParentID

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = @ParentID

