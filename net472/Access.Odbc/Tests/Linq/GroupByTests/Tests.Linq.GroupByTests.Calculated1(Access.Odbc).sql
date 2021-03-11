﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') as [c1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p_1 NVarChar(1) -- String
SET     @p_1 = '1'

SELECT
	[selectParam].[ParentID],
	[selectParam].[ChildID]
FROM
	[Child] [selectParam]
WHERE
	Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') = ?

