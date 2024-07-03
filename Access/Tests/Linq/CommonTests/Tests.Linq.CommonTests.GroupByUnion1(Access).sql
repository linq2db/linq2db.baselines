BeforeExecute
-- Access AccessOleDb

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
			IIF([g_1].[ParentID] IS NOT NULL, [g_1].[ParentID], 0) as [ParentID],
			IIF([g_1].[GrandChildID] IS NOT NULL, [g_1].[GrandChildID], 0) as [ID]
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] >= 4
	) [tt]
GROUP BY
	[tt].[ParentID]
HAVING
	(SUM([tt].[ID]) <> 0 OR SUM([tt].[ID]) IS NULL)

