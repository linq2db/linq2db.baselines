BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

