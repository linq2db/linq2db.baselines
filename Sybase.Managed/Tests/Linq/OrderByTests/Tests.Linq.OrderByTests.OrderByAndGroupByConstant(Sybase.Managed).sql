-- Sybase.Managed Sybase

SELECT TOP 1
	[g_2].[Count_1],
	1 + [g_2].[Expr],
	[g_2].[Max_1]
FROM
	(
		SELECT
			COUNT(*) as [Count_1],
			MIN([g_1].[ChildID]) as [Expr],
			MAX([g_1].[ChildID]) as [Max_1]
		FROM
			[Child] [g_1]
	) [g_2]

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

