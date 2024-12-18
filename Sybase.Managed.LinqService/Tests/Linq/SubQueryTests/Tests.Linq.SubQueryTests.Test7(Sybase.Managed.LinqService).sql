BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] = [c_1].[ChildID] AND [g_1].[ChildID] IS NOT NULL
	)
FROM
	[Child] [c_1]

