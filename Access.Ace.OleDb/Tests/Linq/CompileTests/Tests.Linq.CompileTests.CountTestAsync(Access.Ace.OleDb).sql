﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

