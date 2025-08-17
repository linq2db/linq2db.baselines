BeforeExecute
-- SqlServer.2008 (asynchronously)
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
			[ch].[ChildID] > 3 OR [ch].[ChildID] < 4
	) [t1]
WHERE
	[t1].[RN] > @skip
ORDER BY
	[t1].[ParentID],
	[t1].[ChildID]

