﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Sum([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

