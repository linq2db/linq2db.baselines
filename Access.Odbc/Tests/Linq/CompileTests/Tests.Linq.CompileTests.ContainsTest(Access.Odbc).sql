﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = 1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Parameter1 Int -- Int32
SET     @Parameter1 = -1

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = ?

