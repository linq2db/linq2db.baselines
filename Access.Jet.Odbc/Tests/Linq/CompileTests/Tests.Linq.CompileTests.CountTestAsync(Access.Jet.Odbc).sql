﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

