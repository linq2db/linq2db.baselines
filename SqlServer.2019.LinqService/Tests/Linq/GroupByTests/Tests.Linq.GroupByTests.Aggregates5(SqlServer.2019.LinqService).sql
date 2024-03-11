BeforeExecute
-- SqlServer.2019

SELECT
	Count(IIF([g_1].[ChildID] > 30, 1, NULL)),
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[g_1].[ParentID] = [ch].[ParentID] AND [ch].[ChildID] > 30
	),
	Count(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

