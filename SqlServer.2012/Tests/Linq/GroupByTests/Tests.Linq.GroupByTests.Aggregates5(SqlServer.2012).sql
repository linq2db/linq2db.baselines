BeforeExecute
-- SqlServer.2012

SELECT
	Count(IIF([g_1].[ChildID] > 30, 1, NULL)),
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_1].[ParentID] = [ch].[ParentID]
	),
	Count(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

