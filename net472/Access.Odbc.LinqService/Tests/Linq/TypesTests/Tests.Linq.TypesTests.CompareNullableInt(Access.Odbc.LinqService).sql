﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @param_1 Int -- Int32
SET     @param_1 = 1

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[Value1] = ?

