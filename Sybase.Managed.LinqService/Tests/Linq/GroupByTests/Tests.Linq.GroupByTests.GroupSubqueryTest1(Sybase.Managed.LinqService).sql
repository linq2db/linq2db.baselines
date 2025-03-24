﻿BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [pmp],
	[Child] [pmp1]

BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

