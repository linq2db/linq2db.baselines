﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*) > 0
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 2

SELECT
	COUNT(*) > 0
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1 AND [p].[ParentID] = ?

