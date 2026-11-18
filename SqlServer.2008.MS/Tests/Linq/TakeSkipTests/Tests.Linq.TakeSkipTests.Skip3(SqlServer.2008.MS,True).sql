-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 3

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
	[t1].[RN] > @skip
ORDER BY
	[t1].[ParentID],
	[t1].[ChildID]

