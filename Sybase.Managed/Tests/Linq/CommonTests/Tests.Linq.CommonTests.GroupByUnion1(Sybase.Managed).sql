BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[tt].[ParentID],
	SUM([tt].[ID])
FROM
	(
		SELECT
			[gr].[ParentID],
			[gr].[ChildID] as [ID]
		FROM
			[Child] [gr]
		WHERE
			[gr].[ParentID] < 4
		UNION ALL
		SELECT
			Coalesce([g_1].[ParentID], 0) as [ParentID],
			Coalesce([g_1].[GrandChildID], 0) as [ID]
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] >= 4
	) [tt]
GROUP BY
	[tt].[ParentID]
HAVING
	(SUM([tt].[ID]) <> 0 OR SUM([tt].[ID]) IS NULL)

