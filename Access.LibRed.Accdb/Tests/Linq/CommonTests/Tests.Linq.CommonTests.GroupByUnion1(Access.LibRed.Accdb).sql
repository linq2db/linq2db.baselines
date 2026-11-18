-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[tt].[Key_1],
	SUM([tt].[ChildID])
FROM
	(
		SELECT
			[gr].[ParentID] as [Key_1],
			[gr].[ChildID]
		FROM
			[Child] [gr]
		WHERE
			[gr].[ParentID] < 4
		UNION ALL
		SELECT
			CASE
				WHEN [g_1].[ParentID] IS NULL THEN 0
				ELSE [g_1].[ParentID]
			END as [Key_1],
			CASE
				WHEN [g_1].[GrandChildID] IS NULL THEN 0
				ELSE [g_1].[GrandChildID]
			END as [ChildID]
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] >= 4
	) [tt]
GROUP BY
	[tt].[Key_1]
HAVING
	SUM([tt].[ChildID]) <> 0

