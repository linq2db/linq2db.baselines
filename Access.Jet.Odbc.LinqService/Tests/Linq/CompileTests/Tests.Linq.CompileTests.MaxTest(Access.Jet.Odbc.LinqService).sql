﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	MAX([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	MAX([c_1].[ParentID])
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

