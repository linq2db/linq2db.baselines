BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[tt].[ParentID],
	[tt].[Sum_1]
FROM
	(
		SELECT
			Sum([gr_1].[ID]) as [Sum_1],
			[gr_1].[ParentID]
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
			) [gr_1]
		GROUP BY
			[gr_1].[ParentID]
	) [tt]
WHERE
	([tt].[Sum_1] <> 0 OR [tt].[Sum_1] IS NULL)

