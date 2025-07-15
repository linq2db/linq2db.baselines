BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[ch].[ParentID],
			[ch].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [ch].[ParentID], [ch].[ChildID]) as [RN]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100
	) [t1]
WHERE
	[t1].[RN] > 3
ORDER BY
	[t1].[ParentID],
	[t1].[ChildID]

