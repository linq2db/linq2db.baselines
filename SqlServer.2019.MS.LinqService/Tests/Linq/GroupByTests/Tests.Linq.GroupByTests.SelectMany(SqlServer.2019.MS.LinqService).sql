BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID] as [Key_1]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	) [g_1]
		INNER JOIN [Child] [ch] ON [g_1].[Key_1] = [ch].[ParentID]

